# @brief 清除存储的玩家动态数据，例如上架的物品、退回的物品、历史记录、出售商店等，不会影响数据包运行

data remove storage global_shop:storage g_tempList
data remove storage global_shop:storage g_playerBoughtListMap
data remove storage global_shop:storage g_playerSellingListMap
data remove storage global_shop:storage g_playerShopList
data remove storage global_shop:storage g_playerSoldListMap
data remove storage global_shop:storage g_recycleShopList
data remove storage global_shop:storage g_returnListMap
data remove storage global_shop:storage g_sellShopList
data remove storage global_shop:storage g_playerNameMap