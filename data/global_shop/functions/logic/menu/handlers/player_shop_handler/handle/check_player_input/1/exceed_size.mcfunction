# @executor Player

tellraw @s ["\u00a7c输入的序号过大, 商店仅有 ",{"score":{"objective":"glbs_common","name":"temp"},"color":"white"},"\u00a7c 个物品"]

# 重置输入器状态
scoreboard players set @s glbs_inputter_1 0
scoreboard players set @s glbs_inputter_2 0
scoreboard players enable @s glbs_inputter_1
scoreboard players enable @s glbs_inputter_2