# @brief 二分大于查找，在 g_playerShopList 中查找 expireTime_ > g_time 的下标，则小于该下标的所有物品均过期。特别地，返回 0 代表没有物品过期，返回 g_playerShopList.size() 代表所有物品过期，该下标正好是过期物品的数量。
# @return 过期物品的数量

scoreboard players set left glbs_common 0
execute store result score right glbs_common run data get storage global_shop:storage g_playerShopList
scoreboard players remove right glbs_common 1

# while
execute if score left glbs_common <= right glbs_common run function global_shop:storage/store_manager/return_expire_item/get_expire_num/while

return run scoreboard players get left glbs_common