# 退回的物品 6
execute if score temp2 glbs_common = ItemDataType::RETURN glbs_common run return run function global_shop:logic/item_data/return_item_data/to_string
# 货币 7
execute if score temp2 glbs_common = ItemDataType::CASH glbs_common run return run function global_shop:logic/item_data/cash_item_data/to_string