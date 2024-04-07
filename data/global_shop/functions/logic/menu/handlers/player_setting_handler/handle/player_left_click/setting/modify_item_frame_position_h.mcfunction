# @executor Player

function global_shop:sound/success

tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.player_settings.info_frame.pos_h.tip.1\"","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger glbs_inputter_1 set ?"},"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.player_settings.info_frame.pos_h.tip.2\"","color":"green"},"\n ",{"text":"/trigger glbs_inputter_1 set ?","color":"gray"},"\n\n",{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.player_settings.info_frame.pos_h.tip.3\"","color":"green"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.player_settings.info_frame.pos_h.tip.4\"","color":"green"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.player_settings.info_frame.pos_h.tip.5\"","color":"green"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.player_settings.info_frame.pos_h.tip.6\"","color":"green"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.player_settings.info_frame.pos_h.tip.7\"","color":"green"},{"text":" [-10, 10]:","color":"green"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.player_settings.info_frame.pos_h.tip.8\"","color":"green"}]},"bold":true}]

execute on vehicle run scoreboard players operation @s glbs_last_target = @s glbs_last_view_id

scoreboard players enable @s glbs_inputter_1