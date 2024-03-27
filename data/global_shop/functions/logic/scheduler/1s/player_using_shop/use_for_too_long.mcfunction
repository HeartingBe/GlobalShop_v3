# @executor Player

execute on vehicle at @s run function global_shop:logic/menu/kill

scoreboard players operation temp glbs_common = MAX_EACH_USE_TIME glbs_common
scoreboard players operation temp glbs_common /= 60 glbs_common
tellraw @s ["\u00a7c你使用商店太久了, 每次只允许使用 ",{"score":{"objective":"glbs_common","name":"temp"},"color":"red"}," \u00a7c分钟, 要使用请重新打开"]