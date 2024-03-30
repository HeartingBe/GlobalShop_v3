#> global_shop:logic/player/obtain_item
# @param g_itemData 物品数据
# @executor Player

# 获取还原后的物品，写入 storage global_shop:common temp:{id:"...",Count:?b,tag:{...}}
function global_shop:logic/item_data/revert

# give
function global_shop:logic/player/obtain_item/macro_give with storage global_shop:common temp