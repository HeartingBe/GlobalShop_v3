data modify storage global_shop:common g_itemData.tag.global_shop set from storage global_shop:storage g_cashInfo[4].item.tag.global_shop
data modify storage global_shop:common g_itemData.Count set value 1b
data modify storage global_shop:common g_itemData.tag merge value {Enchantments:[{id:"minecraft:unbreaking",lvl:1}],HideFlags:1}
data modify storage global_shop:storage g_cashInfo[4].item set from storage global_shop:common g_itemData
execute on vehicle on passengers if entity @s[type=minecraft:item_display,tag=!glbs_killed] if score @s glbs_order = temp2 glbs_common run data modify entity @s item set from storage global_shop:common g_itemData
function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_item/success_tellraw