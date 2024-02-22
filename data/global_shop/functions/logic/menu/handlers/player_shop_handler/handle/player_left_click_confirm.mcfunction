# @brief 执行玩家购买的逻辑
# @param g_itemData
# @param index g_itemData 在玩家商店总列表中对应的下标
# @executor Menu
# @other 进入该函数时，物品一定存在

# 高亮移除
team empty glsp_will_buy

# log
#execute on passengers if entity @s[type=minecraft:player] run title @s actionbar ["左键确认"]

# 对比 id 判断是否为玩家自己出售的物品
   # temp1: 物品来源玩家 id；temp2: 玩家 uid
   execute store result score temp1 glbs_common run data get storage global_shop:common g_itemData.tag.global_shop.sourcePlayerUid
   execute on passengers if entity @s[type=minecraft:player] store result score temp2 glbs_common run scoreboard players get @s glbs_uid

   # log
   #tellraw @a ["temp1: ",{"score":{"objective":"glbs_common","name":"temp1"}},"    temp2: ",{"score":{"objective":"glbs_common","name":"temp2"}}]

   # 是自己出售的物品
   execute if score temp1 glbs_common = temp2 glbs_common run return run function global_shop:logic/menu/handlers/player_shop_handler/handle/player_left_click_confirm/sell_by_myself

   # 是其他玩家出售的物品，判断金钱是否足够
      # 获取玩家金钱
      execute on passengers if entity @s[type=minecraft:player] store result score temp1 glbs_common run function global_shop:logic/player/get_money
      # 获取物品的价格
      execute store result score temp2 glbs_common run data get storage global_shop:common g_itemData.tag.global_shop.price
      # 钱不够
      execute if score temp1 glbs_common < temp2 glbs_common run return run function global_shop:logic/menu/handlers/player_shop_handler/handle/player_left_click_confirm/money_not_enough

# 钱足够
   # 删除物品
   execute store result score uid glbs_common run data get storage global_shop:common g_itemData.tag.global_shop.sourcePlayerUid
   scoreboard players operation id glbs_common = @s glbs_last_action_target_id
   function global_shop:storage/store_manager/delete_player_shop_elem_by_index
   # 将买家的钱加到卖家的收益上
      # 扣除买家的钱（temp2 是上面获取的物品价格）
      scoreboard players operation reduce glbs_common = temp2 glbs_common
      execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/player/reduce_money
      # 获取卖家名字
      data remove storage global_shop:common temp
      data modify storage global_shop:common temp.uid set from storage global_shop:common g_itemData.tag.global_shop.sourcePlayerUid
      function global_shop:storage/store_manager/get_player_name with storage global_shop:common temp
      # 加到卖家的收益上
      scoreboard players operation income glbs_common = temp2 glbs_common
      data remove storage global_shop:common temp
      data modify storage global_shop:common temp.playerName set from storage global_shop:common g_playerName
      function global_shop:logic/menu/handlers/player_shop_handler/handle/player_left_click_confirm/macro_add_seller_income with storage global_shop:common temp
      # 更新卖家的出售物品数量
      function global_shop:logic/menu/handlers/player_shop_handler/handle/player_left_click_confirm/macro_update_seller_sell_num with storage global_shop:common temp
   # 写入买家历史购买
      # 去掉时间
      data remove storage global_shop:common g_itemData.tag.global_shop.expireTime
      # 修改物品 type
      execute store result storage global_shop:common g_itemData.tag.global_shop.type int 1 run scoreboard players get ItemDataType::MY_BOUGHT glbs_common
      # 构造宏参数 {playerUid: int}
      data remove storage global_shop:common temp
      execute on passengers if entity @s[type=minecraft:player] store result storage global_shop:common temp.playerUid int 1 run scoreboard players get @s glbs_uid

      function global_shop:storage/store_manager/append_to_player_bought_list with storage global_shop:common temp
   # 写入卖家历史出售（需要修改 sourcePlayerUid 为买家）
      # 修改物品 type
      execute store result storage global_shop:common g_itemData.tag.global_shop.type int 1 run scoreboard players get ItemDataType::MY_SOLD glbs_common
      # 构造宏参数 {playerUid: int}, 这是卖家的 uid, 应从 g_itemData 的 sourcePlayerUid 中获取
      data modify storage global_shop:common temp.playerUid set from storage global_shop:common g_itemData.tag.global_shop.sourcePlayerUid
      # 卖家的历史出售中, sourcePlayerUid 应该指买家的 uid, 修改
      execute on passengers if entity @s[type=minecraft:player] store result storage global_shop:common g_itemData.tag.global_shop.sourcePlayerUid int 1 run scoreboard players get @s glbs_uid

      function global_shop:storage/store_manager/append_to_player_sold_list with storage global_shop:common temp
   # 把物品给玩家
   execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/player/obtain_item
   # 刷新显示
   function global_shop:logic/menu/handlers/player_shop_handler/refresh
   # 通知
   execute on passengers if entity @s[type=minecraft:player] run tellraw @s ["购买成功"]