#> global_shop:logic/menu/perform/player_leave_game
# @executor Player

tellraw @s ["\u00a7c全球商店检测到你退出了游戏, 已强制关闭, 要使用商店请重新打开"]

execute on vehicle at @s run function global_shop:logic/menu/kill