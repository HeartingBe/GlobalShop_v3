# @param temp Menu 记录的玩家看向的物品序号
# @executor Admin

execute on vehicle run scoreboard players operation temp2 glbs_common = @s glbs_last_target
execute if score temp2 glbs_common matches -1 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/player_left_click/try_set_price/no_select

# 若货币被禁用
function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/player_left_click/try_set_item/check_if_disabled 
execute if score if_disabled glbs_common matches 1 run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/player_left_click/try_set_price/disabled

# 提示管理员设置价格
scoreboard players enable @s glbs_inputter_1
function global_shop:sound/success
tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"cash.tip_input_value.1\"","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger glbs_inputter_1 set ?"},"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"cash.tip_input_value.2\"","color":"green"}]},"bold":true}]