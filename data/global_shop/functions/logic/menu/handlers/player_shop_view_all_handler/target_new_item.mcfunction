# @brief 玩家看向新的物品时，高亮物品，检查是否存在并更新，更新记录量、状态量
# @param temp 玩家看向的物品展示实体的序号
# @executor Menu

# temp 是传入的参数，以下临时变量不要用 temp

# 高亮物品展示实体，并显示文本
   # 高亮，并记录看向物品的 id。若记录 0 说明看向的物品为空项；若记录 -1 说明不存在
   execute as @e[distance=..5,type=minecraft:item_display,tag=global_shop] run function global_shop:logic/menu/handlers/player_shop_view_all_handler/highlight_item_and_display_text
   # 物品不存在时刷新整页
   execute if score @s glbs_last_action_target_id matches -1 run return run function global_shop:logic/menu/handlers/player_shop_view_all_handler/handle/item_not_exist

# 更新看向的物品展示实体的序号
scoreboard players operation @s glbs_last_action_target_order = temp glbs_common

# 重置 lastAction_
scoreboard players operation @s glbs_last_action = Action::NO_ACTION_THIS_PLAYER glbs_common

# 清除左键信息
execute on passengers if entity @s[type=minecraft:interaction] run function global_shop:logic/interactor/clear_left_click_action