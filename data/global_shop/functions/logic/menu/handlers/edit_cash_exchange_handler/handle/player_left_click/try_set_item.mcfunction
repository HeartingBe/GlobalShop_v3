# @param temp Menu 记录的玩家看向的物品序号
# @executor Admin

execute on vehicle run scoreboard players operation temp2 glbs_common = @s glbs_last_target
execute if score temp2 glbs_common matches -1 run function global_shop:sound/fail
execute if score temp2 glbs_common matches -1 run return run tellraw @s [{"text":"请先左键选中货币后再修改货币的外观物品","color":"red"}]

# 读取玩家手上的物品，修改货币
data remove storage global_shop:common g_itemData
execute store success score hasItemOnHand glbs_common run data modify storage global_shop:common g_itemData set from entity @s SelectedItem
execute if score hasItemOnHand glbs_common matches 0 run function global_shop:sound/fail
execute if score hasItemOnHand glbs_common matches 0 run return run tellraw @s [{"text":"设置货币的外观物品失败, 因为你的主手是空的","color":"red"}]

# 计算货币的index
scoreboard players operation chosen_cash_order glbs_common = temp2 glbs_common
scoreboard players operation last_chosen_cash_index glbs_common = temp2 glbs_common
scoreboard players remove last_chosen_cash_index glbs_common 7
scoreboard players operation last_chosen_cash_index glbs_common /= 3 glbs_common

execute if score last_chosen_cash_index glbs_common matches 0 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_item/0
execute if score last_chosen_cash_index glbs_common matches 1 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_item/1
execute if score last_chosen_cash_index glbs_common matches 2 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_item/2
execute if score last_chosen_cash_index glbs_common matches 3 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_item/3
execute if score last_chosen_cash_index glbs_common matches 4 run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_item/4