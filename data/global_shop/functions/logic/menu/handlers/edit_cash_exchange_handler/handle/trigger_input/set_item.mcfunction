#> global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_item
#
# @executor player

scoreboard players set @s glbs_inputter_2 0

# 读取玩家手上的物品，修改货币
data remove storage global_shop:common player.SelectedItem
execute store success score temp_hasItemOnHand glbs_common run data modify storage global_shop:common player.SelectedItem set from entity @s SelectedItem
execute if score temp_hasItemOnHand glbs_common matches 0 run return run tellraw @s {"text":"手上是空的哦","color":"red"}

# 计算货币的index
execute on vehicle store result score chosen_cash_order glbs_common run scoreboard players operation last_chosen_cash_index glbs_common = @s glbs_last_target
scoreboard players operation last_chosen_cash_index glbs_common -= 7 glbs_common
scoreboard players operation last_chosen_cash_index glbs_common /= 3 glbs_common

execute if score last_chosen_cash_index glbs_common matches 0 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_item/0
execute if score last_chosen_cash_index glbs_common matches 1 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_item/1
execute if score last_chosen_cash_index glbs_common matches 2 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_item/2
execute if score last_chosen_cash_index glbs_common matches 3 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_item/3
execute if score last_chosen_cash_index glbs_common matches 4 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_item/4