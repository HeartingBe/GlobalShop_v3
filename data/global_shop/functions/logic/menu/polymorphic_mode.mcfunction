# @brief 根据不同模式调不同 handler 处理逻辑
# @executor Menu

# 主菜单的处理逻辑
execute if score @s glbs_mode = Mode::MAIN glbs_common run return run function global_shop:logic/menu/handlers/main_menu_handler/handle

# 玩家商店主菜单的处理逻辑
execute if score @s glbs_mode = Mode::PLAYER_SHOP_MAIN glbs_common run return run function global_shop:logic/menu/handlers/player_shop_main_menu_handler/handle

# 玩家商店浏览的处理逻辑
execute if score @s glbs_mode = Mode::PLAYER_SHOP_VIEW_ALL glbs_common run return run function global_shop:logic/menu/handlers/player_shop_view_all_handler/handle

# 玩家浏览自己历史购买的处理逻辑
execute if score @s glbs_mode = Mode::PLAYER_SHOP_VIEW_MY_BOUGHT glbs_common run return run function global_shop:logic/menu/handlers/player_shop_view_my_bought_handler/handle