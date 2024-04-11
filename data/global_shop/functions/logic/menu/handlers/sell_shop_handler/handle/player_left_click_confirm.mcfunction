# @brief 执行玩家购买出售商店物品的逻辑
# @param g_itemData
# @executor Menu
# @other 进入该函数时，物品一定存在

# log
#execute on passengers if entity @s[type=minecraft:player] run title @s actionbar ["左键确认"]

# 判断金钱是否足够
   # 获取玩家金钱
   execute on passengers if entity @s[type=minecraft:player] store result score temp1 glbs_common run function global_shop:logic/player/get_money
   # 获取物品的价格
   execute store result score temp2 glbs_common run data get storage global_shop:common g_itemData.tag.global_shop.price
   # 钱不够
   execute if score temp1 glbs_common < temp2 glbs_common run return run execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/sell_shop_handler/handle/player_left_click_confirm/money_not_enough

# 钱足够（temp2 是上面获取的物品价格）
   scoreboard players operation reduce glbs_common = temp2 glbs_common
   # 扣除买家的钱
   execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/sell_shop_handler/handle/player_left_click_confirm/reduce_give_and_tip