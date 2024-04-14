ride @p[tag=glbs_temp] dismount
ride @p[tag=glbs_temp] mount @s

execute store result score @s glbs_x run data get entity @s Pos[0]
execute store result score @s glbs_y run data get entity @s Pos[1]
execute store result score @s glbs_z run data get entity @s Pos[2]

function global_shop:logic/menu/menu/open_menu_success/init_passengers

tag @s remove glbs_temp