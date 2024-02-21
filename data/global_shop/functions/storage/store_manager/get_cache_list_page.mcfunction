# @brief 从缓存中取从 beginIndex_ 开始的一整页数据
# @param g_tempList 源数据

# 从最新的物品开始显示，即从表尾向前取出物品数据。beginIndex_ 先沿对称轴对称到其对称点上，然后向前移动逐个取出
data remove storage global_shop:common g_itemsToDisplay

execute store result score temp1 glbs_common run data get storage global_shop:storage g_tempList
scoreboard players remove temp1 glbs_common 1
scoreboard players operation temp1 glbs_common -= @s glbs_begin_index

# for (int i = 0; i < 27; ++i)
scoreboard players set i glbs_common 0
function global_shop:storage/store_manager/get_cache_list_page/1