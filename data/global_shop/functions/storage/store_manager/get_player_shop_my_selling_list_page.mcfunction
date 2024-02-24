#> global_shop:storage/store_manager/get_player_shop_my_selling_list_page
# @brief 返回玩家正在出售的物品列表中，从下标 beginIndex 开始的数据, beginIndex < 0 或者溢出最大范围的部分填充空项
# @param beginIndex 开始下标，从 Menu 的记分板取得
# @param g_itemsToDisplay 目标位置，将结果写入该路径
# @executor Menu

# 先取出玩家正在出售的物品列表，存储在 global_shop:storage g_tempList
data remove storage global_shop:common temp
execute on passengers if entity @s[type=minecraft:player] store result storage global_shop:common temp.uid int 1 run scoreboard players get @s glbs_uid
function global_shop:storage/store_manager/cache_player_shop_my_selling_list with storage global_shop:common temp

# 从缓存中取从 beginIndex_ 开始的一整页数据
function global_shop:storage/store_manager/get_cache_list_page