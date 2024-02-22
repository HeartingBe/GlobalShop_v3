#> global_shop:logic/item_data/check_all_slot/revert
# @brief 获取物品数据的原始数据，并去除 Count 和 Slot 标签
# @param g_itemDataThisSlot 待处理的物品数据
# @param g_itemDataThisSlot 出参

# @other 此函数依赖记分板 tempCount，需要保证调用方函数不使用该变量

data remove storage global_shop:common g_itemDataThisSlot.Count
data remove storage global_shop:common g_itemDataThisSlot.Slot
data remove storage global_shop:common g_itemDataThisSlot.tag.global_shop
execute store result score tempCount glbs_common run data get storage global_shop:common g_itemDataThisSlot.tag
execute if score tempCount glbs_common matches 0 run data remove storage global_shop:common g_itemDataThisSlot.tag