# 打开商店
execute if score @s open_global_shop matches 1 at @s run function global_shop:logic/menu/menu
    
execute unless score @s open_global_shop matches 1 run tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"open.tip_open.1\"","color":"yellow"},"\n",{"text":"1. ","color":"green"},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"open.tip_open.2\"","color":"green"}," ",{"text":"(","color":"gray"},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"open.tip_open.3\"","color":"gray"},{"text":")","color":"gray"},"\n ",{"text":"/trigger open_global_shop set 1","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger open_global_shop set 1"},"underlined":true},"\n",{"text":"2. ","color":"green"},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"open.tip_open.4\"","color":"green"}]

scoreboard players set @s open_global_shop 0