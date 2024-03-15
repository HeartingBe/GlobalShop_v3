# log
#say 1s

# 增加时间
scoreboard players add g_time glbs_common 1

# 减少玩家与秒相关的计时
execute as @a[scores={glbs_uid=1..}] run function global_shop:logic/scheduler/1s/handle_timing_in_seconds

# 清除动画缩小延迟消失的实体
execute as @e[tag=glbs_killed] run function global_shop:logic/scheduler/1s/kill_delay_disappear_entity

# 玩家与秒相关的操作
execute as @a run function global_shop:logic/scheduler/1s/player