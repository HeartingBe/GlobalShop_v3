# 出售商店的物品 2
execute if score temp2 glbs_common = ItemDataType::SELL_SHOP glbs_common run return run function global_shop:logic/item_data/sell_item_data/to_string

# 回收商店的物品 3
execute if score temp2 glbs_common = ItemDataType::RECYCLE_SHOP glbs_common run return run function global_shop:logic/item_data/recycle_item_data/to_string