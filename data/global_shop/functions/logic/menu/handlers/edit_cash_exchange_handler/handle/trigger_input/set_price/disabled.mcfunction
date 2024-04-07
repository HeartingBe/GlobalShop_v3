scoreboard players set @s glbs_inputter_1 0
tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.cash.set_price.disabled\"","color":"red"}]
function global_shop:sound/fail