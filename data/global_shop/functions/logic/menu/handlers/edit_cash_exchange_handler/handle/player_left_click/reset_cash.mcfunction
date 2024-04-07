# @executor Player

data modify storage global_shop:storage g_cashInfo set from storage global_shop:menu_preset_and_control DEFAULT_CASH_INFO
execute on vehicle on passengers if entity @s[type=minecraft:item_display,tag=!glbs_killed] run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/player_left_click/reset_cash/update_nbt
function global_shop:sound/success

# g_lang.cash.reset_success
tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.cash.reset_success\"","color":"green"}]