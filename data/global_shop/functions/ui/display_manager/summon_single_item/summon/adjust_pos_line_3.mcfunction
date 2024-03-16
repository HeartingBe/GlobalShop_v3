# @brief 第二排，即下面一排的位置校准

#data modify entity @s transformation.translation[1] set value 0.0f

execute on passengers run data modify entity @s transformation.translation[0] set value 0.2f
execute on passengers run data modify entity @s transformation.translation[1] set value -0.2f

#data modify entity @s transformation.translation set value [0.0f,0.46f,-3.98f]
#data modify entity @s Rotation[1] set value -6.0f

#data modify entity @s transformation.translation set value [0.0f,0.9682f,-3.75f]
#data modify entity @s Rotation[1] set value -14.4775f