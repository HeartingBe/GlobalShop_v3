#> global_shop:logic/shop/perform
# 入口
# 此函数作为商店逻辑的主入口，以10t，即0.5s的周期执行。每次执行，将会对每个商店执行一次商店逻辑，同时处理玩家打开商店的请求。

# 允许玩家触发打开商店
scoreboard players enable @a open_global_shop

# 处理已打开商店的流程
execute as @e[type=minecraft:block_display,tag=global_shop] at @s run function global_shop:logic/menu/perform

# 处理玩家打开商店的请求
   # 统计连接数，出参 g_connectNum glbs_common
   function global_shop:logic/shop/perform/count_connect_num
   # 处理 trigger
   execute as @a unless score @s open_global_shop matches 0 run function global_shop:logic/shop/perform/player_request_use_shop