#> global_shop:logic/menu/handlers/player_shop_main_menu_handler/handle/player_sell_item/reach_the_limit
tellraw @s ["\u00a7c上架物品失败, 因为你上架和退回的物品达到最大数量 ",{"score":{"objective":"glbs_common","name":"PLAYER_MAX_SELL_AND_RETURN_NUM"},"color":"yellow"}," \u00a7c请取走一些物品再尝试"]

function global_shop:sound/fail

scoreboard players set @s glbs_inputter_1 0