# @brief 清除残留实体，临时世界实体除外
tag @e[tag=global_shop] add glbs_residual
execute as @e[type=minecraft:block_display,tag=global_shop] at @s run tag @e[distance=..5,tag=global_shop] remove glbs_residual
tag 00000d3a-0000-0d3a-0000-17cc000017cc remove glbs_residual
tag 00000d3a-0000-0d3a-0000-17cc0000edf9 remove glbs_residual
tag 00000d3a-0000-0d3a-0000-17cc0000edfa remove glbs_residual
kill @e[tag=glbs_residual]