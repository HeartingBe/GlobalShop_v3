#> global_shop:logic/menu/polymorphic_mode/7_to_10

# 玩家浏览出售商店的处理逻辑 7
execute if score @s glbs_mode = Mode::SELL_SHOP glbs_common run return run function global_shop:logic/menu/handlers/sell_shop_handler/handle

# 玩家浏览回收商店的处理逻辑 8
execute if score @s glbs_mode = Mode::RECYCLE_SHOP glbs_common run return run function global_shop:logic/menu/handlers/recycle_shop_handler/handle

# 编辑模式菜单的处理逻辑 9
execute if score @s glbs_mode = Mode::EDIT_MODE glbs_common run return run function global_shop:logic/menu/handlers/edit_main_menu_handler/handle

# 编辑浏览出售商店的处理逻辑 10
execute if score @s glbs_mode = Mode::EDIT_VIEW_SELL_SHOP glbs_common run function global_shop:logic/menu/handlers/edit_view_sell_shop_handler/handle