# @brief 玩家看向新的物品时，高亮物品，检查是否存在并更新，更新记录量、状态量
# @param targetOrder 玩家看向的物品展示实体的序号
# @executor Menu

# 原先的 glbs_last_view_id > 0 时，
# 说明上一次的物品展示了信息，此时要清除周围的文本展示实体的文字
execute if score @s glbs_last_view_id matches 1.. on passengers if entity @s[type=minecraft:text_display] run function global_shop:logic/text_display/clear_text

# 高亮物品展示实体，并显示文本
   # 高亮，并记录看向物品的 id。若记录 0 说明看向的物品为空项；若记录 -1 说明不存在
   execute on passengers if entity @s[type=minecraft:item_display,tag=!glbs_killed] run function global_shop:logic/menu/handlers/admin_setting_handler/highlight_item_and_display_text

# 重置状态量
function global_shop:logic/menu/handlers/menu_handler/target_new_item/reset_and_update_state