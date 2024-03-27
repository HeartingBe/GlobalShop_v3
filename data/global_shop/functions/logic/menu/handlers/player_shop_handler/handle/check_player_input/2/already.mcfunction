# @executor Player

tellraw @s ["\u00a7c你已经在看 id 为 ",{"score":{"objective":"glbs_common","name":"id"},"color":"yellow"}," \u00a7c的物品, 无需跳转"]

function global_shop:sound/fail

# 重置输入器状态
scoreboard players set @s glbs_inputter_1 0
scoreboard players set @s glbs_inputter_2 0
scoreboard players enable @s glbs_inputter_1
scoreboard players enable @s glbs_inputter_2