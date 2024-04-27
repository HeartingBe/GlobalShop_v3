scoreboard players operation temp glbs_common = count glbs_common
scoreboard players operation temp glbs_common += remainingCount glbs_common

tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"recycle_shop.recycle.item_no_enough.1\"","color":"red"}," ",{"score":{"objective":"glbs_common","name":"count"},"color":"yellow"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"recycle_shop.recycle.item_no_enough.2\"","color":"red"}," ",{"score":{"objective":"glbs_common","name":"temp"},"color":"yellow"}]

function global_shop:sound/fail