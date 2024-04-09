scoreboard players operation g_time glbs_common += SELL_ITEM_EFFECTIVE_TIME glbs_common
tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},"\u00a7aSuccessfully expired all items"]
execute at @s run function global_shop:sound/success