# @executor Player

execute on vehicle at @s run function global_shop:logic/menu/kill

scoreboard players operation temp glbs_common = MAX_EACH_USE_TIME glbs_common
scoreboard players operation temp glbs_common /= 60 glbs_common
tellraw @s [{"text":"你使用商店太久了, 每次允许使用的分钟数为","color":"red"}," ",{"score":{"objective":"glbs_common","name":"temp"},"color":"yellow"},"\n",{"text":"要使用请重新打开","color":"red"}]