data modify storage global_shop:common player.SelectedItem.tag.global_shop set from storage global_shop:storage g_cashInfo[4].item.tag.global_shop
data modify storage global_shop:common player.SelectedItem.Count set value 1b
data modify storage global_shop:common player.SelectedItem.tag merge value {Enchantments:[{id:"minecraft:protection",lvl:1}],HideFlags:1}
data modify storage global_shop:storage g_cashInfo[4].item set from storage global_shop:common player.SelectedItem
execute on vehicle on passengers if score @s glbs_order = chosen_cash_order glbs_common run data modify entity @s item set from storage global_shop:common player.SelectedItem 
tellraw @s {"text":"修改成功！","color": "green"}