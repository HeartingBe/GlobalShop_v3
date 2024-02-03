# @brief 玩家看向新的物品时，高亮物品，检查是否存在并更新，更新记录量、状态量
# @param temp 玩家看向的物品展示实体的序号
# @executor Menu

# 高亮物品展示实体，并显示文本
execute as @e[distance=..5,type=minecraft:item_display,tag=global_shop] run function global_shop:logic/menu/handlers/menu_handler/highlight_item_and_display_text

# 查询物品是否存在，不存在时更新 TODO


# 更新 Menu 记录的玩家正在看向物品的 id TODO


# 更新看向的物品展示实体的序号
scoreboard players operation @s glbs_last_action_target = temp glbs_common

# 重置 lastAction_
scoreboard players operation @s glbs_last_action = Action::NO_ACTION_THIS_PLAYER glbs_common

# 清除左键信息
execute on passengers if entity @s[type=minecraft:interaction] run function global_shop:logic/interactor/clear_left_click_action