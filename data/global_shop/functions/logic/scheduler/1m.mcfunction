# 处理过期物品
   # 如果同时使用的玩家数量 <= 最大同时使用数量的一半，进行过期物品处理
   scoreboard players operation temp glbs_common = g_connectNum glbs_common
   scoreboard players operation temp glbs_common *= 2 glbs_common
   execute if score temp glbs_common <= MAX_CONNECT_NUM glbs_common run function global_shop:storage/store_manager/return_expire_item

# 清除残留实体 TODO

schedule function global_shop:logic/scheduler/1m 60s append