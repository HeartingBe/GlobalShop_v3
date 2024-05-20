# @brief 让物品展示实体缩小消失
# @executor ItemDisplayEntity

data modify entity @s transformation.translation[2] set value -5.0f
data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{scale:[0.0f,0.0f,0.0f]},Glowing:0b}

execute on passengers run function global_shop:logic/text_display/disappear