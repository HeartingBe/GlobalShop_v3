# @brief Menu 计算自己与玩家的角度差，|角度差| < 180°（取角度差的绝对值小的一边）。以 Menu 为基准，如果 Menu 需要往右边转动才能和玩家的角度重合，这种情况的角度差为正
# @executor Menu
# @return 角度差

execute store result score i1 glbs_common run data get entity @s Rotation[0]

execute on passengers if entity @s[type=minecraft:player] store result score i2 glbs_common run data get entity @s Rotation[0]

scoreboard players operation i3 glbs_common = i2 glbs_common
scoreboard players operation i3 glbs_common -= i1 glbs_common

execute if score i3 glbs_common matches -180..180 run scoreboard players operation i5 glbs_common = i3 glbs_common
execute unless score i3 glbs_common matches -180..180 run function global_shop:logic/menu/handlers/menu_handler/get_angle_diff/1

return run scoreboard players get i5 glbs_common