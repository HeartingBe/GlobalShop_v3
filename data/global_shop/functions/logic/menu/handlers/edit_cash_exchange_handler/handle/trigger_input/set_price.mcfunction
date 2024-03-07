#> global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_price
#
# 设置价格
# @executor player

execute if score @s glbs_inputter_1 matches ..0 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_price/illegal_price

execute if score chosen_cash_index glbs_common matches 0 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_price/0
execute if score chosen_cash_index glbs_common matches 1 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_price/1
execute if score chosen_cash_index glbs_common matches 2 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_price/2
execute if score chosen_cash_index glbs_common matches 3 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_price/3
execute if score chosen_cash_index glbs_common matches 4 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_price/4