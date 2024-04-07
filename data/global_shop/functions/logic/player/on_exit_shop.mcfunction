# @brief 玩家退出商店时执行
# @executor Player

function global_shop:logic/player/init_scoreboard

title @s actionbar [{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"open.close\"","color":"yellow"}]

execute at @s run function global_shop:sound/exit