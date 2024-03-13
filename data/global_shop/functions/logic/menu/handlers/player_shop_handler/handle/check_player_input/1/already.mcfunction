# @executor Player

tellraw @s ["\u00a7c你正在查看序号为 ",{"score":{"objective":"glbs_common","name":"temp2"},"color":"white"},"\u00a7c 的物品, 无需跳转"]

# 重置输入器状态
scoreboard players set @s glbs_inputter_1 0
scoreboard players set @s glbs_inputter_2 0
scoreboard players enable @s glbs_inputter_1
scoreboard players enable @s glbs_inputter_2