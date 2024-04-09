tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"sell_shop.set_fail.empty_hand\"","color":"red"}]

scoreboard players set @s glbs_inputter_1 0
scoreboard players enable @s glbs_inputter_1

function global_shop:sound/fail