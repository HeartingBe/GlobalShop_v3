# @executor Player

tellraw @s ["\u00a7c你输入的序号过大, 商店仅有 ",{"score":{"objective":"glbs_common","name":"temp"},"color":"yellow"}," \u00a7c个物品"]

function global_shop:sound/fail

# 重置输入器状态
scoreboard players set @s glbs_inputter_1 0
scoreboard players set @s glbs_inputter_2 0
scoreboard players enable @s glbs_inputter_1
scoreboard players enable @s glbs_inputter_2