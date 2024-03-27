#> global_shop:logic/menu/perform/player_leave_game
# @executor Player

tellraw @s ["\u00a7c你退出了游戏, 已强制关闭商店, 要使用请重新打开"]

execute on vehicle at @s run function global_shop:logic/menu/kill