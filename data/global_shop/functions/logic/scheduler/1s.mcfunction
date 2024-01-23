# 清除物品展示实体
execute as @e[type=minecraft:item_display,tag=glbs_to_kill_1] run function global_shop:logic/scheduler/1s/kill_disappear_interaction

schedule function global_shop:logic/scheduler/1s 1s append