ride @p[tag=glbs_temp] dismount
ride @p[tag=glbs_temp] mount @s

scoreboard players operation @s glbs_mode = Mode::MAIN glbs_common

function global_shop:logic/menu/menu/open_menu_success/init_passengers

tag @s remove glbs_temp