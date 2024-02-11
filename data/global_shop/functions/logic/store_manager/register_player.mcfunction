#> global_shop:logic/store_manager/register_player
# 执行玩家注册相关操作
#@throw REGIST_PLAYER_NUM_LIMIT=-3 注册玩家数量达到上限

# 注册玩家数达到上限
execute if score g_nextUid glbs_common > MAX_REGIST_PLAYER_NUM glbs_common run return run scoreboard players get REGIST_PLAYER_NUM_LIMIT glbs_err_code

# 分配 uid
scoreboard players operation @s glbs_uid = g_nextUid glbs_common
scoreboard players add g_nextUid glbs_common 1

# 解析和存储玩家名
function global_shop:logic/store_manager/get_player_name
execute store result storage global_shop:common temp.id int 1.0 run scoreboard players get @s glbs_uid
function global_shop:logic/store_manager/register_player/set_kv with storage global_shop:common temp

return run scoreboard players get SUCCESS glbs_err_code