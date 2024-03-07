#> global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/disable_cash
#
# @executor player

scoreboard players set @s glbs_inputter_2 0

execute if score chosen_cash_index glbs_common matches 0 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/disable_cash/0
execute if score chosen_cash_index glbs_common matches 1 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/disable_cash/1
execute if score chosen_cash_index glbs_common matches 2 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/disable_cash/2
execute if score chosen_cash_index glbs_common matches 3 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/disable_cash/3
execute if score chosen_cash_index glbs_common matches 4 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/disable_cash/4