# 玩家浏览自己历史购买的处理逻辑 3
execute if score @s glbs_mode = Mode::PLAYER_SHOP_VIEW_MY_BOUGHT glbs_common run return run function global_shop:logic/menu/handlers/player_shop_view_my_bought_handler/handle