scoreboard players reset @s glbs_deathCount
tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},{"text":"Unable to open GlobalShop when dead","color":"red"}]
function global_shop:sound/fail