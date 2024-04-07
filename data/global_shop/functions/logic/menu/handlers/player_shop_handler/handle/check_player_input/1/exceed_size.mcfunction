# @executor Player

tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"player_shop.jump_order.too_large\"","color":"red"}," ",{"score":{"objective":"glbs_common","name":"temp"},"color":"yellow"}]

function global_shop:sound/fail

# 重置输入器状态
scoreboard players set @s glbs_inputter_1 0
scoreboard players set @s glbs_inputter_2 0
scoreboard players enable @s glbs_inputter_1
scoreboard players enable @s glbs_inputter_2