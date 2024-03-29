# @executor Player

tellraw @s [{"text":"你输入的序号太大了, 商店的物品数量仅有","color":"red"}," ",{"score":{"objective":"glbs_common","name":"temp"},"color":"yellow"}]

function global_shop:sound/fail

# 重置输入器状态
scoreboard players set @s glbs_inputter_1 0
scoreboard players set @s glbs_inputter_2 0
scoreboard players enable @s glbs_inputter_1
scoreboard players enable @s glbs_inputter_2