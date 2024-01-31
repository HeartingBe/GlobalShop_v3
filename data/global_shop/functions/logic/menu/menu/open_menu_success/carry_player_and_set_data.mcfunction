ride @p[tag=glbs_temp] dismount
ride @p[tag=glbs_temp] mount @s

scoreboard players operation @s glbs_mode = Mode::MAIN glbs_common

tag @s remove glbs_temp