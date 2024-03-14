#> global_shop:storage/store_manager/get_admin_setting_list_page
# @brief 返回管理员设置列表中，从下标 beginIndex 开始的数据, beginIndex < 0 或者溢出最大范围的部分填充空项
# @param beginIndex 开始下标，从 Menu 的记分板取得
# @param g_itemsToDisplay 目标位置，将结果写入该路径
# @executor Menu

# 先取出管理员设置列表，存储在 global_shop:storage g_tempList
data modify storage global_shop:storage g_tempList set from storage global_shop:storage g_adminSettingList

# 从缓存中取从 beginIndex_ 开始的一整页数据
function global_shop:storage/store_manager/get_cache_list_page