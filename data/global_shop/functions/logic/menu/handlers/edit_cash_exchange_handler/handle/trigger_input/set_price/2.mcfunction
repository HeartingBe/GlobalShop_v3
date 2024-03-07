#设置价格
execute store result entity @e[distance=..5,scores={glbs_order=13},type=item_display,limit=1] item.tag.global_shop.price int 1 store result storage global_shop:storage g_cashInfo[2].item.tag.global_shop.price int 1 run scoreboard players get @s glbs_inputter_1
tellraw @s {"text":"设置成功！","color": "green"}