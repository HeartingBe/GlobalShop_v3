# 测试 StoreManager::LocateIndexInPlayerShopListById
# @macro {id: int}

$scoreboard players set id glbs_common $(id)

execute store result score temp glbs_common run function global_shop:storage/store_manager/locate_index_in_player_shop_list_by_id

tellraw @s ["\u00a7breturn: ",{"score":{"objective":"glbs_common","name":"temp"}}]