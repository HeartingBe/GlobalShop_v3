# @param temp Menu 记录的玩家看向的物品序号
# @executor Admin

execute on vehicle run scoreboard players operation temp2 glbs_common = @s glbs_last_target
execute if score temp2 glbs_common matches -1 run function global_shop:sound/fail
execute if score temp2 glbs_common matches -1 run return run tellraw @s {"text":"请左键选择货币后再修改货币物品","color":"red"}

# 若货币被禁用
function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/player_left_click/try_set_item/check_if_disabled 
execute if score if_disabled glbs_common matches 1 run return run tellraw @s {"text":"此货币已被禁用，请启用后再进行修改","color":"red"}

# 读取玩家手上的物品，修改货币
data remove storage global_shop:common g_itemData
execute store success score hasItemOnHand glbs_common run data modify storage global_shop:common g_itemData set from entity @s SelectedItem
execute if score hasItemOnHand glbs_common matches 0 run function global_shop:sound/fail
execute if score hasItemOnHand glbs_common matches 0 run return run tellraw @s {"text":"手上是空的哦","color":"red"}

execute if score temp2 glbs_common matches 7 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_item/0
execute if score temp2 glbs_common matches 10 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_item/1
execute if score temp2 glbs_common matches 13 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_item/2
execute if score temp2 glbs_common matches 16 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_item/3
execute if score temp2 glbs_common matches 19 run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_item/4