scoreboard players set @s glbs_st_item_frame_size 0

tellraw @s ["\u00a7a成功重置物品信息框大小"]

function global_shop:sound/success

execute on vehicle run scoreboard players set @s glbs_last_target -1

# 更新物品信息框
execute on vehicle on passengers if entity @s[type=minecraft:text_display] run function global_shop:logic/text_display/text_display/set_custom_size