# 控件 0
execute if score temp2 glbs_common = ItemDataType::CONTROL glbs_common run return run function global_shop:logic/item_data/control_item_data/to_string

# 玩家商店的物品 1
execute if score temp2 glbs_common = ItemDataType::PLAYER_SHOP glbs_common run function global_shop:logic/item_data/player_shop_item_data/to_string