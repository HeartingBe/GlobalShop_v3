# 增加时间
scoreboard players add g_time glbs_common 1

# 减少玩家与秒相关的计时
execute as @a[scores={glbs_uid=1..}] run function global_shop:logic/scheduler/1s/handle_timing_in_seconds

# 清除物品展示实体
execute as @e[type=minecraft:item_display,tag=glbs_to_kill_1] run function global_shop:logic/scheduler/1s/kill_disappear_interaction

schedule function global_shop:logic/scheduler/1s 1s append