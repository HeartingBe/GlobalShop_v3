tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.player_shop_main.sell.empty_hand.1","color":"red"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.player_shop_main.sell.empty_hand.2","color":"red"}]

function global_shop:sound/fail

scoreboard players set @s glbs_inputter_1 0
scoreboard players enable @s glbs_inputter_1