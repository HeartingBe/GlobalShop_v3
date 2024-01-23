# @executor Menu

execute on passengers if entity @s[type=minecraft:player] run tellraw @s ["\u00a7c主菜单不可退出"]

scoreboard players operation @s glbs_last_action = RIGHT_CLICK glbs_common