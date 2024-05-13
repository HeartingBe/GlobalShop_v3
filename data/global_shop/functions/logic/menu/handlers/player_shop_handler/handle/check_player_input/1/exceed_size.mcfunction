# @param temp 售货架物品数量
# @executor Player

execute if score temp glbs_common matches 1.. run tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"player_shop.jump_order.too_large\"","color":"red"},"\u00a7f[\u00a7e1\u00a7f, ",{"score":{"objective":"glbs_common","name":"temp"},"color":"yellow"},"\u00a7f]"]
execute if score temp glbs_common matches 0 run tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"player_shop.jump_order.too_large\"","color":"red"},"\u00a74Ø"]

function global_shop:sound/fail

# 重置输入器状态
scoreboard players set @s glbs_inputter_1 0
scoreboard players set @s glbs_inputter_2 0
scoreboard players enable @s glbs_inputter_1
scoreboard players enable @s glbs_inputter_2