# @executor Player

# 增加玩家使用的秒数
scoreboard players add @s glbs_use_time 1

# 检查玩家使用太久
execute if score @s glbs_use_time > MAX_EACH_USE_TIME glbs_common run function global_shop:logic/scheduler/1s/player_using_shop/use_for_too_long