#启用
data remove storage global_shop:storage g_cashInfo[4].disable
execute on vehicle on passengers if entity @s[scores={glbs_order=19},type=minecraft:item_display] run data modify entity @s item set from storage global_shop:storage g_cashInfo[4].item