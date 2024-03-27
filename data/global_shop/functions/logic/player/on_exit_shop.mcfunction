# @brief 玩家退出商店时执行
# @executor Player

# 玩家开着商店，跳过
execute on vehicle if entity @s[type=minecraft:block_display,tag=global_shop] run return 0

function global_shop:logic/player/init_scoreboard

title @s actionbar ["\u00a7e商店已关闭, 欢迎再次光临"]

execute at @s run function global_shop:sound/exit