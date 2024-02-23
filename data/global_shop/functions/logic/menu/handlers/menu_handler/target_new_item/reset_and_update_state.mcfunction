# @brief 重置状态量
# @param temp 玩家看向的物品展示实体的序号
# @executor Menu

# 更新上一次看向的物品展示实体的序号 lastActionTarget_
scoreboard players operation @s glbs_last_view_order = temp glbs_common

# 重置 lastAction_
scoreboard players operation @s glbs_last_action = Action::NO_ACTION_THIS_PLAYER glbs_common

# 清除左键信息
execute on passengers if entity @s[type=minecraft:interaction] run function global_shop:logic/interactor/clear_left_click_action