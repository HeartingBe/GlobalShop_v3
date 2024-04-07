tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.sell_shop.set_fail.negative.1\"","color":"red"}," ",{"score":{"objective":"glbs_inputter_1","name":"@s"},"color":"yellow"}," ",{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.sell_shop.set_fail.negative.2\"","color":"green"}]

scoreboard players set @s glbs_inputter_1 0
scoreboard players enable @s glbs_inputter_1

function global_shop:sound/fail