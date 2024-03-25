#> global_shop:logic/scheduler/10t

# log
#say 10t

# 完整执行标记检查
execute unless score g_tickTag glbs_common matches 0 run return run function global_shop:logic/scheduler/not_fully_execute
   scoreboard players add g_tickTag glbs_common 1
   # 调入口
   function global_shop:logic/shop/perform
# 续：完整执行标记检查
scoreboard players set g_tickTag glbs_common 0