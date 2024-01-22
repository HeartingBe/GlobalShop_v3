scoreboard players operation i4 glbs_common = i3 glbs_common
scoreboard players add i4 glbs_common 360

execute if score i4 glbs_common matches -180..180 run scoreboard players operation i5 glbs_common = i4 glbs_common
execute unless score i4 glbs_common matches -180..180 run function global_shop:logic/menu/handlers/menu_handler/get_angle_diff/2