# @executor Player

execute on vehicle at @s run function global_shop:logic/menu/kill

scoreboard players operation temp glbs_common = MAX_EACH_USE_TIME glbs_common
scoreboard players operation temp glbs_common /= 60 glbs_common
tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"use.use_long_time.1\"","color":"red"}," ",{"score":{"objective":"glbs_common","name":"temp"},"color":"yellow"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"use.use_long_time.2\"","color":"red"}]