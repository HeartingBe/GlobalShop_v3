# @executor Player

# 限制玩家输入的范围
scoreboard players operation temp glbs_common = @s glbs_inputter_1
execute if score temp glbs_common matches ..-51 run scoreboard players set temp glbs_common -50
execute if score temp glbs_common matches 51.. run scoreboard players set temp glbs_common 50

# 加
scoreboard players operation @s glbs_st_item_frame_size += temp glbs_common
execute if score @s glbs_st_item_frame_size matches ..-51 run scoreboard players set @s glbs_st_item_frame_size -50
execute if score @s glbs_st_item_frame_size matches 51.. run scoreboard players set @s glbs_st_item_frame_size 50

tellraw @s ["\u00a7a调整大小成功"]

# 溢出提示
execute unless score @s glbs_st_item_frame_size matches -49..49 run tellraw @s ["\u00a7c物品信息框自定义大小变化的范围是 [-50, 50], \n当前你设置的大小变化为: ",{"score":{"objective":"glbs_st_item_frame_size","name":"@s"},"color":"yellow"},"\u00a7c 已经不可再往溢出方向继续调整"]

# 更新物品信息框
execute on vehicle on passengers if entity @s[type=minecraft:text_display] run function global_shop:logic/text_display/text_display/set_custom_size

scoreboard players set @s glbs_inputter_1 0