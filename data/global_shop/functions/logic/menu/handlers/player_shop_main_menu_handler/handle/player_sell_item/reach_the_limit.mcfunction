#> global_shop:logic/menu/handlers/player_shop_main_menu_handler/handle/player_sell_item/reach_the_limit
tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.player_shop_main.sell.store_num_limit.1\"","color":"green"}," ",{"score":{"objective":"glbs_common","name":"PLAYER_MAX_SELL_AND_RETURN_NUM"},"color":"yellow"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.player_shop_main.sell.store_num_limit.2\"","color":"green"}]

function global_shop:sound/fail

scoreboard players set @s glbs_inputter_1 0