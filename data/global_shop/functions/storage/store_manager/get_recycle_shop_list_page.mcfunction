# @brief 返回从下标 beginIndex 开始的数据， beginIndex < 0 或者溢出最大范围的部分填充空项
# @param beginIndex 开始下标，从 Menu 的记分板取得
# @param g_itemsToDisplay 目标位置，将结果写入该路径
# @executor Menu

# 从最新的物品开始显示，即从表尾向前取出物品数据。beginIndex_ 先沿对称轴对称到其对称点上，然后向前移动逐个取出

data remove storage global_shop:common g_itemsToDisplay

execute store result score temp1 glbs_common run data get storage global_shop:storage g_recycleShopList
scoreboard players remove temp1 glbs_common 1
scoreboard players operation temp1 glbs_common -= @s glbs_begin_index

# for (int i = 0; i < 27; ++i)
data remove storage global_shop:common temp
scoreboard players set i glbs_common 0
function global_shop:storage/store_manager/get_recycle_shop_list_page/1