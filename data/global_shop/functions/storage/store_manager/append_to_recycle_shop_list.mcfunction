#> global_shop:storage/store_manager/append_to_recycle_shop_list
#
# @brief 将物品插入到玩家商店物品总列表, 同时在该玩家正在出售的物品列表中冗余存储一份
# @param g_itemData 要插入的物品
# @executor Player

# 写入出售商店物品列表
data modify storage global_shop:storage g_recycleShopList append from storage global_shop:common g_itemData