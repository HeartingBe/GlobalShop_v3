# @brief global_shop:logic/menu/handlers/?_handler/rotate_and_update_items 函数中，更新 Menu 状态
# @param g_columnDiff 列数差
# @executor Menu

# 清除周围的文本展示实体
function global_shop:logic/text_display/kill

# 更新自身 beginIndex_
scoreboard players operation temp glbs_common = g_columnDiff glbs_common
scoreboard players operation temp glbs_common *= ITEM_NUM_PER_COLUMN glbs_common
scoreboard players operation @s glbs_begin_index += temp glbs_common

# 旋转
function global_shop:logic/menu/handlers/menu_handler/rotate

# 重置 lastAction_ lastActionTarget_（否则水平旋转后看向新的物品将不会高亮）
scoreboard players set @s glbs_last_action_target_order 0
scoreboard players set @s glbs_last_action_target_id 0
scoreboard players operation @s glbs_last_action = Action::NO_ACTION_THIS_PLAYER glbs_common