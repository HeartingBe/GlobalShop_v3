# @param temp 玩家看向的物品序号
# @executor Menu

# 原先的 glbs_last_action_target_id > 0 时，
# 说明上一次的物品展示了信息，此时要清除周围的文本展示实体
execute if score @s glbs_last_action_target_id matches 1.. run function global_shop:logic/text_display/kill

# 高亮物品展示实体，并显示文本
   # 高亮，并记录看向物品的 id
   execute as @e[distance=..5,type=minecraft:item_display,tag=global_shop] run function global_shop:logic/menu/handlers/menu_handler/highlight_item_and_display_text

# 重置状态量
function global_shop:logic/menu/handlers/menu_handler/target_new_item/reset_and_update_state