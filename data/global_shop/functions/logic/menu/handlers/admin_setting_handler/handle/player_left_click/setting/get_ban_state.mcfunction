# @executor Admin

data remove storage global_shop:common admin_input

tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"admin_settings.ban_player_state.1\"","color":"green","clickEvent":{"action":"suggest_command","value":"/data modify storage global_shop:common admin_input set value \"?\""},"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"admin_settings.ban_player_state.2\"","color":"green"},"\n",{"text":"/data modify storage global_shop:common","color":"gray"},"\n",{"text":" admin_input set value \"?\"","color":"gray"},"\n\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"admin_settings.ban_player_state.3\"","color":"green"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"admin_settings.ban_player_state.4\"","color":"green"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"admin_settings.ban_player_state.5\"","color":"green"}]},"bold":true},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"admin_settings.ban_player_state.6\"","color":"yellow","clickEvent":{"action":"run_command","value":"/function global_shop:settings/get_player_ban_state"},"underlined":true,"hoverEvent":{"action":"show_text","contents":[""]},"bold":true}]

# 音效
function global_shop:sound/success