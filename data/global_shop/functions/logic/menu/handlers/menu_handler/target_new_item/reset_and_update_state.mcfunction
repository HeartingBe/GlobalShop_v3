# @brief 重置状态量
# @param targetOrder 玩家看向的物品展示实体的序号
# @executor Menu

# 玩家看向了菜单外，记录 glbs_last_view_id 为 0
execute if score targetOrder glbs_common matches -1 run scoreboard players set @s glbs_last_view_id 0

# 更新上一次看向的物品展示实体的序号 lastActionTarget_
scoreboard players operation @s glbs_last_view_order = targetOrder glbs_common

# 重置 lastAction_
scoreboard players operation @s glbs_last_action = Action::NO_ACTION_THIS_PLAYER glbs_common

# 清除左键信息
execute on passengers if entity @s[type=minecraft:interaction] run function global_shop:logic/interactor/clear_left_click_action