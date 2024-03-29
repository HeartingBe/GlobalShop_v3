#> global_shop:logic/menu/handlers/player_shop_main_menu_handler/handle/player_sell_item/reach_the_limit
tellraw @s [{"text":"上架物品失败, 因为你的上架和退回的物品达到最大数量","color":"green"}," ",{"score":{"objective":"glbs_common","name":"PLAYER_MAX_SELL_AND_RETURN_NUM"},"color":"yellow"},"\n",{"text":"请取走一些物品再尝试","color":"green"}]

function global_shop:sound/fail

scoreboard players set @s glbs_inputter_1 0