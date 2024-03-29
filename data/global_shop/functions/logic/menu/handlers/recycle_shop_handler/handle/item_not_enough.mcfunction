scoreboard players operation temp glbs_common = count glbs_common
scoreboard players operation temp glbs_common += remainingCount glbs_common

tellraw @s [{"text":"需要的回收物品数量不足, 需要","color":"red"}," ",{"score":{"objective":"glbs_common","name":"count"},"color":"yellow"},"   ",{"text":"你只有","color":"red"}," ",{"score":{"objective":"glbs_common","name":"temp"},"color":"yellow"}]

function global_shop:sound/fail