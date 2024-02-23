# @brief 用 Menu 记录的玩家看向的物品的 id 在出售商店列表中获取对应的物品信息
# @param g_itemData 出参, 为空代表没有找到
# @executor Menu

# 以下临时变量不要用 temp

data remove storage global_shop:common g_itemData

scoreboard players operation id glbs_common = @s glbs_last_view_id

# left、right
scoreboard players set left glbs_common 0
execute store result score right glbs_common run data get storage global_shop:storage g_sellShopList
scoreboard players remove right glbs_common 1

data remove storage global_shop:common temp
# while
execute if score left glbs_common <= right glbs_common run function global_shop:storage/store_manager/get_sell_shop_list_elem_by_id/while

# return null（没找到就已经是空）
#-