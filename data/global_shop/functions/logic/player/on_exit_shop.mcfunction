# @brief 玩家退出商店时执行
# @executor Player

function global_shop:logic/player/init_scoreboard

tellraw @s ["\u00a7e商店已关闭, 欢迎再次光临"]

execute at @s run function global_shop:sound/exit