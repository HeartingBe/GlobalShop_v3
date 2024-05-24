#> global_shop:logic/shop/perform
# 入口
# 此函数作为商店逻辑的主入口，以 10t 即 0.5s 的周期执行。每次执行，将会对每个商店执行一次商店逻辑，同时处理玩家打开商店的请求。

# 提前关闭位置变化的菜单（维度变化借助进度检测优先处理）
execute as @e[type=minecraft:block_display,tag=global_shop,tag=!glbs_killed] at @s run function global_shop:logic/menu/check_position_change_to_close

# 处理已打开商店的流程
execute as @e[type=minecraft:block_display,tag=global_shop,tag=!glbs_killed] at @s run function global_shop:logic/menu/perform

# 处理玩家相关操作
execute as @a run function global_shop:logic/shop/perform/player