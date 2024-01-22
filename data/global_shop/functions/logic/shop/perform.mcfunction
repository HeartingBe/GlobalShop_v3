# 入口

# 允许玩家触发打开商店
scoreboard players enable @a open_global_shop

# 处理已打开商店的流程
execute as @e[type=minecraft:block_display,tag=global_shop] at @s run function global_shop:logic/menu/perform

# 玩家请求打开商店
execute as @a unless score @s open_global_shop matches 0 run function global_shop:logic/shop/perform/player_request_use_shop