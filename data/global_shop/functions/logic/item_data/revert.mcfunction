# @brief 把 g_itemData 中的物品数据还原成刚从玩家手里拿到的状态，将抹去 tag.global_shop，必要时应提前获取即将删除的记录量
# @param g_itemData 物品数据

data remove storage global_shop:common g_itemData.tag.global_shop
# tag 为空则去掉 tag:{}
execute store result score temp glbs_common run data get storage global_shop:common g_itemData.tag
execute if score temp glbs_common matches 0 run data remove storage global_shop:common g_itemData.tag