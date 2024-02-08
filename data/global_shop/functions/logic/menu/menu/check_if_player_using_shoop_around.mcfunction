# @brief 检查玩家周围是否有其他玩家正在使用商店
# @executor Player
# @return 0 代表没有, 1 代表有

scoreboard players set temp glbs_common 0

execute as @a[distance=..10] on vehicle if entity @s[tag=global_shop] run scoreboard players set temp glbs_common 1

return run scoreboard players get temp glbs_common