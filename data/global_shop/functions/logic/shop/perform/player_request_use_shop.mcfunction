# 打开商店
execute if score @s open_global_shop matches 1 at @s run function global_shop:logic/menu/menu
    
execute unless score @s open_global_shop matches 1 run tellraw @s ["\u00a7c将分数设置为 1 来打开商店"]

scoreboard players set @s open_global_shop 0