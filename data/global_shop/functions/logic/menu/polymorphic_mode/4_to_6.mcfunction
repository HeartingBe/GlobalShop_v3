# 玩家浏览自己历史出售的处理逻辑 4
execute if score @s glbs_mode = Mode::PLAYER_SHOP_VIEW_MY_SOLD glbs_common run return run function global_shop:logic/menu/handlers/player_shop_view_my_sold_handler/handle

# 玩家浏览自己正在出售的处理逻辑 5
execute if score @s glbs_mode = Mode::PLAYER_SHOP_VIEW_MY_SELLING glbs_common run return run function global_shop:logic/menu/handlers/player_shop_view_my_selling_handler/handle

# 玩家浏览退回物品的处理逻辑 6
execute if score @s glbs_mode = Mode::PLAYER_SHOP_VIEW_RETURN glbs_common run return run function global_shop:logic/menu/handlers/player_shop_view_return_handler/handle