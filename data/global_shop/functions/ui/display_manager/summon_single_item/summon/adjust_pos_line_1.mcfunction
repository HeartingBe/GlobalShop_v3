# @brief 第一排，即上面一排的位置校准

data modify entity @s transformation.translation[1] set value 2.0f

execute on passengers run data modify entity @s transformation.translation[0] set value 0.2f
execute on passengers run data modify entity @s transformation.translation[1] set value 1.8f

#data modify entity @s transformation.translation set value [0.0f,1.1237f,-4.3264f]
#data modify entity @s Rotation[1] set value 12.0f

#data modify entity @s transformation.translation set value [0.0f,0.9682f,-4.25f]
#data modify entity @s Rotation[1] set value 14.4775f