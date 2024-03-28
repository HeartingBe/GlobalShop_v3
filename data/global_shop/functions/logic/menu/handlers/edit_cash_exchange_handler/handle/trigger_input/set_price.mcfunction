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
execute on vehicle run scoreboard players operation temp_order glbs_common = @s glbs_last_target
execute if score temp_order glbs_common matches 7 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_price/0
execute if score temp_order glbs_common matches 10 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_price/1
execute if score temp_order glbs_common matches 13 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_price/2
execute if score temp_order glbs_common matches 16 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_price/3
execute if score temp_order glbs_common matches 19 run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_price/4