# @executor Admin

# g_lang.ask_if_reinit
tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.ask_if_reinit.1\"","color":"green"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.ask_if_reinit.2\"","color":"yellow","clickEvent":{"action":"run_command","value":"/function global_shop:init_classes"},"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.ask_if_reinit.3\"","color":"green"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.ask_if_reinit.4\"","color":"green"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.ask_if_reinit.5\"","color":"green"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.ask_if_reinit.6\"","color":"green"}]},"bold":true}]

execute at @s run function global_shop:sound/success