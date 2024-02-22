#> global_shop:storage/store_manager/get_player_selling_list_elem_by_id
# @brief 获取 g_playerSellingListMap.<uid>[{id:<id>}]
# @param sellerUid 卖家的 uid
# @param g_itemData 出参
# @executor Menu

# 以下临时变量不要用 temp

# 构造参数 temp:{id:<id>,uid:<uid>},其中 uid 应该是卖家的 uid
   data remove storage global_shop:common temp
   # id
   execute store result storage global_shop:common temp.id int 1 run scoreboard players get @s glbs_last_action_target_id
   # uid
   execute store result storage global_shop:common temp.uid int 1 run scoreboard players get sellerUid glbs_common
# 初始化出参
data remove storage global_shop:common g_itemData

function global_shop:storage/store_manager/get_player_selling_list_elem_by_id/macro_get_elem with storage global_shop:common temp

# 写入 sourcePlayerUid_，因为玩家正在出售的物品列表中不含该参数
execute if data storage global_shop:common g_itemData store result storage global_shop:common g_itemData.tag.global_shop.sourcePlayerUid int 1 run scoreboard players get sellerUid glbs_common