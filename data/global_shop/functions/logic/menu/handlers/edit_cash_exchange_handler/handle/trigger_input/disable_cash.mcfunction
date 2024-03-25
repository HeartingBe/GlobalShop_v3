#> global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/disable_cash
#
# @executor player

# 计算货币的index
execute on vehicle run scoreboard players operation last_chosen_cash_index glbs_common = @s glbs_last_target
scoreboard players operation last_chosen_cash_index glbs_common -= 7 glbs_common
scoreboard players operation last_chosen_cash_index glbs_common /= 3 glbs_common

scoreboard players set @s glbs_inputter_2 0

execute if score last_chosen_cash_index glbs_common matches 0 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/disable_cash/0
execute if score last_chosen_cash_index glbs_common matches 1 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/disable_cash/1
execute if score last_chosen_cash_index glbs_common matches 2 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/disable_cash/2
execute if score last_chosen_cash_index glbs_common matches 3 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/disable_cash/3
execute if score last_chosen_cash_index glbs_common matches 4 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/disable_cash/4