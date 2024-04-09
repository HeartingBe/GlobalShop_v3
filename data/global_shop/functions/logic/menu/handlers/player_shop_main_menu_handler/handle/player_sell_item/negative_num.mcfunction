tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"player_shop_main.sell.negative.1\"","color":"red"}," ",{"score":{"objective":"glbs_inputter_1","name":"@s"},"color":"yellow"}," ",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"player_shop_main.sell.negative.2\"","color":"red"}]

function global_shop:sound/fail

scoreboard players set @s glbs_inputter_1 0
scoreboard players enable @s glbs_inputter_1