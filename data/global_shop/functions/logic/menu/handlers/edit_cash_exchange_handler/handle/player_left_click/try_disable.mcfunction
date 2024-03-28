# @param temp Menu 记录的玩家看向的物品序号
# @executor Admin

execute on vehicle run scoreboard players operation temp2 glbs_common = @s glbs_last_target
execute if score temp2 glbs_common matches -1 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/player_left_click/try_disable/no_select

execute if score temp2 glbs_common matches 7 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/disable_cash/0
execute if score temp2 glbs_common matches 10 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/disable_cash/1
execute if score temp2 glbs_common matches 13 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/disable_cash/2
execute if score temp2 glbs_common matches 16 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/disable_cash/3
execute if score temp2 glbs_common matches 19 run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/disable_cash/4