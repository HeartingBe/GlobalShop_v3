scoreboard players operation temp glbs_common = count glbs_common
scoreboard players operation temp glbs_common += remainingCount glbs_common

tellraw @s ["\u00a7c需要的回收物品数量不足, 需要 ",{"score":{"objective":"glbs_common","name":"count"},"color":"yellow"},"   \u00a7c你只有 ",{"score":{"objective":"glbs_common","name":"temp"},"color":"yellow"}]

function global_shop:sound/fail