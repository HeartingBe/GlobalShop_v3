# @executor Player

tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"inputter.cannot_input_space.1\"","color":"red"},"\u00a7c：\"",{"type":"nbt","storage":"global_shop:common","nbt":"admin_input","color":"yellow"},"\u00a7c\"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"inputter.cannot_input_space.2\"","color":"red"}]
execute at @s run function global_shop:sound/fail