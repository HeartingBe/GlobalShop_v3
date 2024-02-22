# 玩家浏览出售商店的处理逻辑 6
execute if score @s glbs_mode = Mode::SELL_SHOP glbs_common run return run function global_shop:logic/menu/handlers/sell_shop_handler/handle

# 玩家浏览回收商店的处理逻辑 7
execute if score @s glbs_mode = Mode::RECYCLE_SHOP glbs_common run return run function global_shop:logic/menu/handlers/recycle_shop_handler/handle