#是激活
execute if data storage global_shop:storage g_cashInfo[2].disable run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/disable_cash/2_enable

#禁用
data modify storage global_shop:storage g_cashInfo[2].disable set value true
execute on vehicle on passengers if entity @s[scores={glbs_order=13},type=minecraft:item_display] run data modify entity @s item set from storage global_shop:menu_preset_and_control CONTROL_DISABLED_CASH