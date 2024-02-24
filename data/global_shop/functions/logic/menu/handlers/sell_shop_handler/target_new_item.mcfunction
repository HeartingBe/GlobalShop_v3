# @brief 玩家看向新的物品时，高亮物品，检查是否存在并更新，更新记录量、状态量
# @param targetOrder 玩家看向的物品展示实体的序号
# @executor Menu

# 原先的 glbs_last_view_id > 0 时，
# 说明上一次的物品展示了信息，此时要清除周围的文本展示实体
execute if score @s glbs_last_view_id matches 1.. run function global_shop:logic/text_display/kill_text_display_around

# 高亮物品展示实体，并显示文本
   # 高亮，并记录看向物品的 id。若记录 0 说明看向的物品为空项；若记录 -1 说明不存在
   execute as @e[distance=..5,type=minecraft:item_display,tag=global_shop] run function global_shop:logic/menu/handlers/sell_shop_handler/highlight_item_and_display_text
   # 物品不存在时刷新整页（glbs_last_view_id 仅在此处用 -1 代表物品不存在来判断需要刷新一整页，后续会被置为 0 来统一代表 没有看向物品 和 物品不存在 的情况。这是因为：上面的命令是 as 所有物品展示实体来执行的，当被看的物品展示实体发现物品不存在时，如果让它刷新一整页，后续可能有剩余还没执行上面的函数的物品展示实体，它们会先被刷新成新数据，然后再执行还没执行的函数导致逻辑混乱，所以应该等所有物品展示实体执行完上面的函数再返回到这里，然后刷新一整页）
   execute if score @s glbs_last_view_id matches -1 run return run function global_shop:logic/menu/handlers/sell_shop_handler/handle/item_not_exist

# 重置状态量
function global_shop:logic/menu/handlers/menu_handler/target_new_item/reset_and_update_state