# log
#say 1m

# 处理过期物品
   # 如果同时使用的玩家数量 <= 最大同时使用数量的一半，进行过期物品处理
   scoreboard players operation temp glbs_common = g_connectNum glbs_common
   scoreboard players operation temp glbs_common *= 2 glbs_common
   execute if score temp glbs_common <= MAX_CONNECT_NUM glbs_common run function global_shop:storage/store_manager/return_expire_item

# 没有使用商店的玩家，去除输入器权限
execute as @a[scores={glbs_uid=1..}] run function global_shop:logic/scheduler/1m/disable_inputter

# 清除残留实体
function global_shop:logic/scheduler/1m/kill_residual_entity