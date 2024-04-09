scoreboard players operation uid glbs_common = @s glbs_uid

tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"player_shop.buy.yourself\"","color":"green"}]

function global_shop:sound/success