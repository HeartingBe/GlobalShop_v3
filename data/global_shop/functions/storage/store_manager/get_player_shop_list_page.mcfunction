# @brief 返回从下标 beginIndex 开始的数据， beginIndex < 0 或者溢出最大范围的部分填充空项
# @param beginIndex 开始下标，从 Menu 的记分板取得
# @param g_itemsToDisplay 目标位置，将结果写入该路径
# @executor Menu

data remove storage global_shop:common g_itemsToDisplay

# for i in range [0, 27]
scoreboard players set temp1 glbs_common 0
function global_shop:storage/store_manager/get_player_shop_list_page/1