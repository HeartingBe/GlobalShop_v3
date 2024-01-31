# @brief 将物品插入到玩家商店物品总列表
# @param g_itemData 要插入的物品
# @executor Player

# 插入
data modify storage global_shop:storage g_playerShopList append from storage global_shop:common g_itemData

# 更新玩家出售物品的 id 列表
data remove storage global_shop:common temp
data modify storage global_shop:common temp.id set from storage global_shop:common g_itemData.tag.global_shop.id
execute store result storage global_shop:common temp.playerUid int 1 run scoreboard players get @s glbs_uid
function global_shop:storage/store_manager/append_to_player_selling_id_list with storage global_shop:common temp