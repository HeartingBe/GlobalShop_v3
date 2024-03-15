# 打开商店
execute if score @s open_global_shop matches 1 at @s run function global_shop:logic/menu/menu
    
execute unless score @s open_global_shop matches 1 run tellraw @s ["\u00a7a将 open_global_shop 设置为 \u00a7e1 \u00a7a来打开商店"]

scoreboard players set @s open_global_shop 0