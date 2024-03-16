# @brief 统计使用商店的玩家数量
# @executor Player
# @param g_connectNum 正在使用商店的玩家数量

execute on vehicle if entity @s[type=minecraft:block_display,tag=global_shop] run scoreboard players add g_connectNum glbs_common 1