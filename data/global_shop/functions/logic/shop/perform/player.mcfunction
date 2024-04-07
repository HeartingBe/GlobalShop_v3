# 处理玩家打开商店的请求
    # 统计连接数，结果写入 g_connectNum glbs_common
    scoreboard players set g_connectNum glbs_common 0
    function global_shop:logic/shop/perform/count_connect_num
    # 处理 trigger
    execute unless score @s open_global_shop matches 0 run function global_shop:logic/shop/perform/player_request_use_shop

# 关闭了商店的玩家的逻辑（播放音效，并去除输入器权限等）
#（玩家脱离 Menu 导致无法使用 execute 通过关系选中，可以用 glbs_use_time 记分板判断，有分数说明玩家过去一段时间使用了商店）
execute if score @s glbs_use_time matches 0.. run function global_shop:logic/shop/perform/player/check_if_exit