#> global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/player_left_click
#
# 处理编辑菜单的左键操作
# @executor Menu 

# 获取玩家看向的控件序号（就是 @s glbs_last_view_order）
scoreboard players operation temp glbs_common = @s glbs_last_view_order

# 点击的是物品还是按钮
# 是按钮
execute if score temp glbs_common matches 11 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/player_left_click/try_set_item
execute if score temp glbs_common matches 14 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/player_left_click/try_set_price
execute if score temp glbs_common matches 17 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/player_left_click/try_disable
# 否则是物品
execute unless score temp glbs_common matches 7 unless score temp glbs_common matches 10 unless score temp glbs_common matches 13 unless score temp glbs_common matches 16 unless score temp glbs_common matches 19 run return 0
function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/player_left_click/choose_cash