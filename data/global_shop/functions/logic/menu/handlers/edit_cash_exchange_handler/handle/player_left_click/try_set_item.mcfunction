# @executor Admin

execute on vehicle run scoreboard players operation temp2 glbs_common = @s glbs_last_target
execute if score temp2 glbs_common matches -1 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/player_left_click/try_set_item/no_select

# 若货币被禁用
function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/player_left_click/try_set_item/check_if_disabled 
execute if score if_disabled glbs_common matches 1 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/player_left_click/try_set_item/disabled

# 读取玩家手上的物品，修改货币
data remove storage global_shop:common g_itemData
execute store success score hasItemOnHand glbs_common run data modify storage global_shop:common g_itemData set from entity @s SelectedItem
execute if score hasItemOnHand glbs_common matches 0 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/player_left_click/try_set_item/mainhand_empty

# 玩家主手拿着货币，阻止
execute if data storage global_shop:common g_itemData.tag.global_shop.price run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/player_left_click/try_set_item/hold_cash

execute if score temp2 glbs_common matches 7 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_item/0
execute if score temp2 glbs_common matches 10 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_item/1
execute if score temp2 glbs_common matches 13 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_item/2
execute if score temp2 glbs_common matches 16 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_item/3
execute if score temp2 glbs_common matches 19 run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_item/4