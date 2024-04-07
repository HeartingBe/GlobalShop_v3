# @executor Player

# 限制玩家输入的范围
scoreboard players operation temp glbs_common = @s glbs_inputter_1
execute if score temp glbs_common matches ..-51 run scoreboard players set temp glbs_common -50
execute if score temp glbs_common matches 51.. run scoreboard players set temp glbs_common 50

# 加
scoreboard players operation @s glbs_st_item_frame_pos_v += temp glbs_common
execute if score @s glbs_st_item_frame_pos_v matches ..-51 run scoreboard players set @s glbs_st_item_frame_pos_v -50
execute if score @s glbs_st_item_frame_pos_v matches 51.. run scoreboard players set @s glbs_st_item_frame_pos_v 50

tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.player_settings.info_frame.pos_v.success\"","color":"green"}]

function global_shop:sound/success

# 溢出提示
execute unless score @s glbs_st_item_frame_pos_v matches -49..49 run tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.player_settings.info_frame.pos_v.overflow.1\"","color":"red"},{"text":": [-50, 50]","color":"red"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.player_settings.info_frame.pos_v.overflow.2\"","color":"red"}," ",{"score":{"objective":"glbs_st_item_frame_pos_v","name":"@s"},"color":"yellow"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.player_settings.info_frame.pos_v.overflow.3\"","color":"red"}]

# 更新物品信息框
execute on vehicle on passengers if entity @s[type=minecraft:text_display] run function global_shop:logic/text_display/text_display/set_custom_position

scoreboard players set @s glbs_inputter_1 0