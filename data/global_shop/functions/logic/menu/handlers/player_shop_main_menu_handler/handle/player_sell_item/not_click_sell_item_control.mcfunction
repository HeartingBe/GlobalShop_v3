#> global_shop:logic/menu/handlers/player_shop_main_menu_handler/handle/player_sell_item/not_click_sell_item_control
# @executor Player

scoreboard players set @s glbs_inputter_1 0

tellraw @s ["\u00a7c请先点击上架物品按钮, 然后设置价格"]