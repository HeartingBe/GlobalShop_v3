#> global_shop:storage/store_manager/get_sell_shop_list_elem_by_id
# @brief 用 Menu 记录的玩家看向的物品的 id 在出售商店列表中获取对应的物品信息
# @param g_itemData 出参, 为空代表没有找到
# @param index 出参，物品在出售商店列表中的下标
# @executor Menu

scoreboard players operation id glbs_common = @s glbs_last_view_id
execute store result score index glbs_common run function global_shop:storage/store_manager/locate_index_in_sell_shop_list_by_id

function global_shop:storage/store_manager/get_sell_shop_list_elem_by_index