# @brief 保持 beginIndex_ 不变，旋转角不变，刷新当前展示的物品
# @executor Menu

# 重置 lastAction_ lastActionTarget_（使物品在下一个处理周期能重新高亮）
scoreboard players set @s glbs_last_view_order -1
scoreboard players operation @s glbs_last_action = Action::NO_ACTION_THIS_PLAYER glbs_common

# 重置 last_glbs_last_view_id
scoreboard players set @s glbs_last_view_id 0

# 取玩家历史出售物品数据
function global_shop:storage/store_manager/get_player_shop_my_sold_list_page

# 更新物品展示实体
function global_shop:ui/display_manager/update_whole_page