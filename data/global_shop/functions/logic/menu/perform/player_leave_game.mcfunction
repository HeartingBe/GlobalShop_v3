#> global_shop:logic/menu/perform/player_leave_game
# @executor Player

tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"use.leave_game.1\"","color":"red"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"use.leave_game.2\"","color":"red"}]

execute on vehicle at @s run function global_shop:logic/menu/kill