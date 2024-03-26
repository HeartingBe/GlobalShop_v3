# 编辑浏览出售商店的处理逻辑 11
execute if score @s glbs_mode = Mode::EDIT_VIEW_RECYCLE_SHOP glbs_common run return run function global_shop:logic/menu/handlers/edit_view_recycle_shop_handler/handle

# 编辑货币交换的处理逻辑 12
execute if score @s glbs_mode = Mode::EDIT_CASH_EXCHANGE glbs_common run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle