data remove storage global_shop:common admin_input

tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"admin_settings.uninstall.fail\"","color":"red"}," \u00a7c\"",{"text":"i want to uninstall","color":"dark_red","bold":true},"\u00a7c\""]

function global_shop:sound/fail