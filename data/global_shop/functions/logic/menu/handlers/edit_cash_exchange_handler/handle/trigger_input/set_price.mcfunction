#> global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_price
#
# 设置价格
# @executor player

# tag 玩家输入
# 输入负数
execute if score @s glbs_inputter_1 matches ..0 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_price/illegal_price
# 输入过大
execute if score @s glbs_inputter_1 > MAX_PLAYER_INPUT glbs_common run return run function global_shop:logic/inputter/too_large_input_1

scoreboard players operation temp_cash_price glbs_common = @s glbs_inputter_1

scoreboard players set @s glbs_inputter_1 0

# 计算货币的index
execute on vehicle run scoreboard players operation last_chosen_cash_index glbs_common = @s glbs_last_target
scoreboard players remove last_chosen_cash_index glbs_common 7
scoreboard players operation last_chosen_cash_index glbs_common /= 3 glbs_common

execute if score last_chosen_cash_index glbs_common matches 0 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_price/0
execute if score last_chosen_cash_index glbs_common matches 1 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_price/1
execute if score last_chosen_cash_index glbs_common matches 2 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_price/2
execute if score last_chosen_cash_index glbs_common matches 3 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_price/3
execute if score last_chosen_cash_index glbs_common matches 4 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_price/4