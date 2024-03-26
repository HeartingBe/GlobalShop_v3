#启用
data remove storage global_shop:storage g_cashInfo[4].disable
execute on vehicle on passengers if entity @s[scores={glbs_order=19},type=minecraft:item_display,tag=!glbs_killed] run data modify entity @s item set from storage global_shop:storage g_cashInfo[4].item
function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/disable_cash/enable_tellraw