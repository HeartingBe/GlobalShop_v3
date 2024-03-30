scoreboard players operation uid glbs_common = @s glbs_uid

tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.player_shop.buy.yourself","color":"red"}]

function global_shop:sound/success