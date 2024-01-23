# @executor Menu

execute on passengers if entity @s[type=minecraft:player] run return run tellraw @s ["\u00a7a左键"]

scoreboard players operation @s glbs_last_action = LEFT_CLICK glbs_common