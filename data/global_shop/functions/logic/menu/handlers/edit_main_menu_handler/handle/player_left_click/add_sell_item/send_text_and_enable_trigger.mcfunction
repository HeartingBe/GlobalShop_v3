# @executor Player

scoreboard players enable @s glbs_inputter_1

tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"sell_shop.set.tip.1\"","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger glbs_inputter_1 set ?"},"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"1. ","color":"green"},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"sell_shop.set.tip.2\"","color":"green"},"\n",{"text":"2. ","color":"green"},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"sell_shop.set.tip.3\"","color":"green"}," \n ",{"text":"/trigger glbs_inputter_1 set ?","color":"gray"},"\n\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"sell_shop.set.tip.4\"","color":"green"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"sell_shop.set.tip.5\"","color":"green"}]},"bold":true}]

function global_shop:sound/success