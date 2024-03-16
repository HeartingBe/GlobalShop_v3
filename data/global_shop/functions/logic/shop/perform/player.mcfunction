execute on vehicle if entity @s[type=minecraft:block_display,tag=global_shop] run return 0

# 处理玩家打开商店的请求
    # 统计连接数，结果写入 g_connectNum glbs_common
    scoreboard players set g_connectNum glbs_common 0
    function global_shop:logic/shop/perform/count_connect_num
    # 处理 trigger
    execute unless score @s open_global_shop matches 0 run function global_shop:logic/shop/perform/player_request_use_shop

# 关闭了商店的玩家补充播放音效（玩家可能脱离 Menu 导致无法使用 execute 通过关系选中，可以用 glbs_use_time 记分板判断，有分数说明玩家过去一段时间使用了商店）
execute if score @s glbs_use_time matches 0.. run function global_shop:logic/shop/perform/player_dismount_menu