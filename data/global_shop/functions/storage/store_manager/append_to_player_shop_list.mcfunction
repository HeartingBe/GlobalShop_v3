#> global_shop:storage/store_manager/append_to_player_shop_list
# @brief 将物品插入到玩家商店物品总列表, 同时在该玩家正在出售的物品列表中冗余存储一份
# @param g_itemData 要插入的物品
# @executor Player

# @other 传入的数据本来应该写好 sourcePlayerUid_，但是因为这里要写入玩家正在出售的物品列表（不需要包含 sourcePlayerUid_），所以要求先不传入，下面再写进去

# 写入该玩家正在出售的物品列表
data remove storage global_shop:common temp
execute store result storage global_shop:common temp.playerUid int 1 run scoreboard players get @s glbs_uid
function global_shop:storage/store_manager/append_to_player_selling_list with storage global_shop:common temp

# 写入玩家商店物品总表
   # 写入 sourcePlayerUid_
   execute store result storage global_shop:common g_itemData.tag.global_shop.sourcePlayerUid int 1 run scoreboard players get @s glbs_uid
   # 写入玩家商店物品总表
   data modify storage global_shop:storage g_playerShopList append from storage global_shop:common g_itemData