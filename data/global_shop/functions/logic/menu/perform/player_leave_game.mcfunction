#> global_shop:logic/menu/perform/player_leave_game
# @executor Player

tellraw @s [{"text":"你之前在打开商店时退出了游戏, 已强制关闭","color":"red"},"\n",{"text":"要使用请重新打开","color":"red"}]

execute on vehicle at @s run function global_shop:logic/menu/kill