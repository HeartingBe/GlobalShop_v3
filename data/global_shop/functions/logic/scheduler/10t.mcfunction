#> global_shop:logic/scheduler/10t

# log
#say 10t

# 完整执行标记检查
execute unless score g_tickTag glbs_common matches 0 run return run function global_shop:logic/scheduler/not_fully_execute
   scoreboard players add g_tickTag glbs_common 1
   # 调入口
   function global_shop:logic/shop/perform
   # timer
      scoreboard players add g_timer glbs_common 1
      # 1s = 2 * 10t
      scoreboard players operation temp glbs_common = g_timer glbs_common
      scoreboard players operation temp glbs_common %= 2 glbs_common
      execute if score temp glbs_common matches 0 run function global_shop:logic/scheduler/1s
      # 1m = 120 * 10t
      scoreboard players operation temp glbs_common = g_timer glbs_common
      scoreboard players operation temp glbs_common %= 120 glbs_common
      execute if score temp glbs_common matches 0 run function global_shop:logic/scheduler/1m
# 续：完整执行标记检查
scoreboard players set g_tickTag glbs_common 0

execute if score g_enable glbs_common matches 1 run return run schedule function global_shop:logic/scheduler/10t 10t append

function global_shop:logic/scheduler/stop