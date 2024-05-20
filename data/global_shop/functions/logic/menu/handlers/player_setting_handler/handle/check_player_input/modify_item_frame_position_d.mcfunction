# @executor Player

# 输入范围有误
scoreboard players operation temp glbs_common = @s glbs_inputter_1
scoreboard players set @s glbs_inputter_1 0
scoreboard players enable @s glbs_inputter_1
execute unless score temp glbs_common matches -50..50 run tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"player_settings.info_frame.pos_d.overflow.1\"","color":"red"},{"text":": [-50, 50]","color":"red"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"player_settings.info_frame.pos_d.overflow.2\"","color":"red"}," ",{"score":{"objective":"glbs_common","name":"temp"},"color":"yellow"}]
execute unless score temp glbs_common matches -50..50 run return run function global_shop:sound/fail

#成功
scoreboard players operation @s glbs_st_item_frame_pos_d = temp glbs_common
tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"player_settings.info_frame.pos_d.success\"","color":"green"}]
function global_shop:sound/success

# 更新物品信息框
execute on vehicle on passengers if entity @s[type=minecraft:text_display] run function global_shop:logic/text_display/text_display/set_custom_position