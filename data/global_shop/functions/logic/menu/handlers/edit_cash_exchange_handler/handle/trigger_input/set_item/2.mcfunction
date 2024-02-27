data modify storage global_shop:common player.SelectedItem.tag.global_shop set from storage global_shop:storage g_cashInfo[2].item.tag.global_shop
data modify storage global_shop:storage g_cashInfo[2].item set from storage global_shop:common player.SelectedItem
execute as @e[distance=..5,type=item_display,tag=global_shop] if score @s glbs_order = chosen_cash_order glbs_common run data modify entity @s item set from storage global_shop:common player.SelectedItem 
tellraw @s {"text":"修改成功！","color": "green"}