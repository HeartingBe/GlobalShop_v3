# @brief 清除除了临时世界实体外的残留实体

tag @e[tag=global_shop,tag=!glbs_killed] add glbs_residual

# 和 Menu 形成完整整体的，需要排除
execute as @e[type=minecraft:block_display,tag=global_shop,tag=!glbs_killed] run function global_shop:logic/scheduler/1m/kill_residual_entity/exclude

# 排除临时世界实体
tag 00000d3a-0000-0d3a-0000-17cc000017cc remove glbs_residual
tag 00000d3a-0000-0d3a-0000-17cc0000edf9 remove glbs_residual
tag 00000d3a-0000-0d3a-0000-17cc0000edfa remove glbs_residual

# 剩下的就是残留的实体
kill @e[tag=glbs_residual]