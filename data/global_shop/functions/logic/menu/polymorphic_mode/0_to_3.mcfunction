#> global_shop:logic/menu/polymorphic_mode/0_to_3

# 主菜单的处理逻辑 0
execute if score @s glbs_mode = Mode::MAIN glbs_common run return run function global_shop:logic/menu/handlers/main_menu_handler/handle

# 玩家商店主菜单的处理逻辑 1
execute if score @s glbs_mode = Mode::PLAYER_SHOP_MAIN glbs_common run return run function global_shop:logic/menu/handlers/player_shop_main_menu_handler/handle

# 玩家商店浏览的处理逻辑 2
execute if score @s glbs_mode = Mode::PLAYER_SHOP glbs_common run return run function global_shop:logic/menu/handlers/player_shop_handler/handle

# 玩家浏览自己历史购买的处理逻辑 3
execute if score @s glbs_mode = Mode::PLAYER_SHOP_VIEW_MY_BOUGHT glbs_common run return run function global_shop:logic/menu/handlers/player_shop_view_my_bought_handler/handle