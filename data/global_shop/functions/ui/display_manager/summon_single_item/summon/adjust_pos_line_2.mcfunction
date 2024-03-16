# @brief 第二排，即中间一排的位置校准

data modify entity @s transformation.translation[1] set value 1.0f

execute on passengers run data modify entity @s transformation.translation[0] set value 0.2f
execute on passengers run data modify entity @s transformation.translation[1] set value 0.8f

#data modify entity @s transformation.translation set value [0.0f,1.0f,-4.0f]
#data modify entity @s Rotation[1] set value 0.0f