# @brief 清除除了临时世界实体外的残留实体
tag @e[tag=global_shop,tag=!glbs_killed] add glbs_residual
execute as @e[type=minecraft:block_display,tag=global_shop,tag=!glbs_killed] run function global_shop:logic/scheduler/1m/kill_residual_entity/exclude
tag 00000d3a-0000-0d3a-0000-17cc000017cc remove glbs_residual
tag 00000d3a-0000-0d3a-0000-17cc0000edf9 remove glbs_residual
tag 00000d3a-0000-0d3a-0000-17cc0000edfa remove glbs_residual
kill @e[tag=glbs_residual]