scoreboard players add g_timer glbs_common 1
# 10t
scoreboard players operation temp glbs_common = g_timer glbs_common
scoreboard players operation temp glbs_common %= 10 glbs_common
execute if score temp glbs_common matches 0 run function global_shop:logic/scheduler/10t
# 1s = 20t
scoreboard players operation temp glbs_common = g_timer glbs_common
scoreboard players operation temp glbs_common %= 20 glbs_common
execute if score temp glbs_common matches 0 run function global_shop:logic/scheduler/1s
# 1m = 60 * 20t
scoreboard players operation temp glbs_common = g_timer glbs_common
scoreboard players operation temp glbs_common %= 1200 glbs_common
execute if score temp glbs_common matches 0 run function global_shop:logic/scheduler/1m