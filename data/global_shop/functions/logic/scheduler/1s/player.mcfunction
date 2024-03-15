# @brief 玩家与秒相关的操作
# @executor Player

scoreboard players set temp glbs_common 0
execute on vehicle if entity @s[type=minecraft:block_display,tag=global_shop] run scoreboard players set temp glbs_common 1

# 玩家使用商店时
execute if score temp glbs_common matches 1 run return run function global_shop:logic/scheduler/1s/player_using_shop

# 玩家没有使用商店时
    # 允许未打开商店的玩家触发打开商店
    scoreboard players enable @s open_global_shop
    advancement revoke @s only global_shop:crafting_stick