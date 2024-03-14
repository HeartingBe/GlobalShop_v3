# @executor Player

scoreboard players set temp glbs_common 1
execute on vehicle if entity @s[type=minecraft:block_display,tag=global_shop] run scoreboard players set temp glbs_common 0
execute unless score temp glbs_common matches 0 run scoreboard players reset @s glbs_inputter_1
execute unless score temp glbs_common matches 0 run scoreboard players reset @s glbs_inputter_2