# @brief 执行玩家购买的逻辑
# @param g_itemData
# @param index g_itemData 在玩家商店总列表中对应的下标
# @executor Menu
# @other 进入该函数时，物品一定存在

# log
#execute on passengers if entity @s[type=minecraft:player] run title @s actionbar ["左键确认"]

# 对比 id 判断是否为玩家自己出售的物品
   # temp1: 物品来源玩家 id；temp2: 玩家 uid
   execute store result score temp1 glbs_common run data get storage global_shop:common g_itemData.tag.global_shop.sourcePlayerUid
   execute on passengers if entity @s[type=minecraft:player] store result score temp2 glbs_common run scoreboard players get @s glbs_uid

   # log
   #tellraw @a ["temp1: ",{"score":{"objective":"glbs_common","name":"temp1"}},"    temp2: ",{"score":{"objective":"glbs_common","name":"temp2"}}]

   # 是自己出售的物品
   execute if score temp1 glbs_common = temp2 glbs_common run return run function global_shop:logic/menu/handlers/player_shop_view_all_handler/handle/player_left_click_confirm/sell_by_myself

   # 是其他玩家出售的物品，判断金钱是否足够
      # 获取玩家金钱
      execute on passengers if entity @s[type=minecraft:player] store result score temp glbs_common run function global_shop:logic/player/get_money
