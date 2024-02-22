#> global_shop:logic/item_data/revert_item_data_and_remove_count
# @brief 获取物品数据的原始数据，并去除 Count 标签
# @param g_itemData 待处理的物品数据
# @param g_itemDataTemp 出参

# @other 此函数依赖记分板 tempCount，需要保证调用方函数不使用该变量

data modify storage global_shop:common g_itemDataTemp set from storage global_shop:common g_itemData
data remove storage global_shop:common g_itemDataTemp.Count
data remove storage global_shop:common g_itemDataTemp.tag.global_shop
execute store result score tempCount glbs_common run data get storage global_shop:common g_itemDataTemp.tag
execute if score tempCount glbs_common matches 0 run data remove storage global_shop:common g_itemDataTemp.tag