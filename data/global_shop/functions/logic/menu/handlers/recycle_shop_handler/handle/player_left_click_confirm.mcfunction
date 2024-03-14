# @brief 执行玩家向回收商店提交物品的逻辑
# @param g_itemData
# @executor Menu
# @other 进入该函数时，物品一定存在

# log
#execute on passengers if entity @s[type=minecraft:player] run title @s actionbar ["左键确认"]

# 判断玩家的钱是否太多
execute on passengers if entity @s[type=minecraft:player] store result score playerMoney glbs_common run function global_shop:logic/player/get_money
execute if score playerMoney glbs_common > INT32_MAX_HALF glbs_common run return run function global_shop:logic/menu/handlers/recycle_shop_handler/handle/player_left_click_confirm/too_much_money

# 判断物品的数量是否足够
   # 获取物品情况
      # 参数 requiredCount
      execute store result score count glbs_common run data get storage global_shop:common g_itemData.Count
      scoreboard players operation requiredCount glbs_common = count glbs_common
      # 获取物品数据的原始数据，并去除 Count 标签，用于后续比较是否相同（参数 g_itemDataToCmp）
      function global_shop:logic/item_data/revert_item_data_and_remove_count
      data modify storage global_shop:common g_itemDataToCmp set from storage global_shop:common g_itemDataTemp
      # 遍历背包获取物品数量
      execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/item_data/check_all_slot
      # log 输出 remainingCount
      #tellraw @a ["remainingCount: ",{"score":{"objective":"glbs_common","name":"remainingCount"}}]
   # 物品不足
   execute if score remainingCount glbs_common matches ..-1 run return run execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/recycle_shop_handler/handle/item_not_enough
   # 物品足够
      execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/recycle_shop_handler/handle/recycle