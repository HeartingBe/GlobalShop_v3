#设置价格
execute on vehicle on passengers if entity @s[scores={glbs_order=16},type=minecraft:item_display] store result entity @s item.tag.global_shop.price int 1 store result storage global_shop:storage g_cashInfo[3].item.tag.global_shop.price int 1 run scoreboard players get temp_cash_price glbs_common
tellraw @s {"text":"设置成功！","color": "green"}