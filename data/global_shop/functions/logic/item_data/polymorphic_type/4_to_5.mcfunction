# 玩家历史购买的物品 4
execute if score temp2 glbs_common = ItemDataType::MY_BOUGHT glbs_common run return run function global_shop:logic/item_data/my_bought_item_data/to_string
# 玩家历史出售的物品 5
execute if score temp2 glbs_common = ItemDataType::MY_SOLD glbs_common run function global_shop:logic/item_data/my_sold_item_data/to_string