data modify entity @s transformation.translation[2] set value -4.0f
data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{scale:[0.6f,0.6f,0.6f]},Glowing:0b}

tag @s remove glbs_item_highlight

# 去掉变色
team leave @s

# 文本展示实体变大
execute on passengers if entity @s[tag=glbs_to_set_state_normal] run function global_shop:logic/text_display/set_state_normal