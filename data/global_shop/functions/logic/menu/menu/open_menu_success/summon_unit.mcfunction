# @executor Player

tag @s add glbs_temp

summon minecraft:block_display ~ ~ ~ {Tags:["global_shop","glbs_temp"],billboard:"vertical",transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.7f,0.55f,0.7f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[-0.35f,-0.5f,-0.35f]},block_state:{Name:"minecraft:cherry_log"},Passengers:[{id:"minecraft:interaction"},{id:"minecraft:text_display"}]}

execute as @e[distance=..2,type=minecraft:block_display,tag=glbs_temp] run function global_shop:logic/menu/menu/open_menu_success/init_state

tag @s remove glbs_temp