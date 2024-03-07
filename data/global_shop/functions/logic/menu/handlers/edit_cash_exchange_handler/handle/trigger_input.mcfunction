# 两个trigger值对应两种输入，即修改id和禁用货币。修改价格使用了另一个trigger，不在此函数中进行处理
# 1 - 修改id，2 - 禁用货币

execute if score @s glbs_inputter_2 matches 1 run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_item
execute if score @s glbs_inputter_2 matches 2 run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/disable_cash

# 立刻重置
scoreboard players set @s glbs_inputter_2 0