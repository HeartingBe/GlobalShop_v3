scoreboard players operation uid glbs_common = @s glbs_uid

tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"view_selling.take_back.success\"","color":"green"}]

function global_shop:sound/success