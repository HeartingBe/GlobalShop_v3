# @executor Admin

data remove storage global_shop:common admin_input

# g_lang.admin_settings.lang.tip
tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"admin_settings.lang.tip.1\"","color":"green","clickEvent":{"action":"suggest_command","value":"/data modify storage global_shop:common admin_input set value \"?\""},"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"admin_settings.lang.tip.2\"","color":"green"},"\n",{"text":"/data modify storage global_shop:common","color":"gray"},"\n",{"text":" admin_input set value \"?\"","color":"gray"},"\n\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"admin_settings.lang.tip.3\"","color":"green"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"admin_settings.lang.tip.4\"","color":"green"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"admin_settings.lang.tip.5\"","color":"green"}]},"bold":true},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"admin_settings.lang.tip.6\"","color":"yellow","clickEvent":{"action":"run_command","value":"/function global_shop:settings/try_modify_language"},"underlined":true,"hoverEvent":{"action":"show_text","contents":[""]},"bold":true}]

execute on vehicle run scoreboard players operation @s glbs_last_target = SETTING_CUSTOM_LANGUAGE glbs_common

# 音效
function global_shop:sound/success