#> global_shop:logic/menu/handlers/player_shop_main_menu_handler/handle/player_sell_item/reach_the_limit
tellraw @s ["\u00a7c上架失败, 上架和回退的物品达到最大数量 ",{"score":{"objective":"glbs_common","name":"PLAYER_MAX_SELL_AND_RETURN_NUM"}}," 请取走一些物品再尝试"]

scoreboard players set @s glbs_inputter_1 0