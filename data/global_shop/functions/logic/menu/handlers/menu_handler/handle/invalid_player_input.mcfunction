# @executor Player

scoreboard players set @s glbs_inputter_1 0
scoreboard players enable @s glbs_inputter

tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.menu.no_select","color":"red"}]

function global_shop:sound/fail