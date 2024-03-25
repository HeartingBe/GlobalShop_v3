#> global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_price
#
# 设置价格
# @executor player

execute if score @s glbs_inputter_1 matches ..0 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_price/illegal_price

scoreboard players operation temp_cash_price glbs_common = @s glbs_inputter_1

scoreboard players set @s glbs_inputter_1 0

# 计算货币的index
execute on vehicle run scoreboard players operation last_chosen_cash_index glbs_common = @s glbs_last_target
scoreboard players operation last_chosen_cash_index glbs_common -= 7 glbs_common
scoreboard players operation last_chosen_cash_index glbs_common /= 3 glbs_common

execute if score last_chosen_cash_index glbs_common matches 0 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_price/0
execute if score last_chosen_cash_index glbs_common matches 1 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_price/1
execute if score last_chosen_cash_index glbs_common matches 2 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_price/2
execute if score last_chosen_cash_index glbs_common matches 3 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_price/3
execute if score last_chosen_cash_index glbs_common matches 4 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_price/4