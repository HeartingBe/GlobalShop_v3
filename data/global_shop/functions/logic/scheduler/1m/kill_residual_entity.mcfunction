tag @e[tag=global_shop] add glbs_residual
execute as @e[type=minecraft:block_display,tag=global_shop] at @s run tag @e[distance=..5,tag=global_shop] remove glbs_residual
kill @e[tag=glbs_residual]