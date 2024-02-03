#> global_shop:logic/menu/handlers/rotatable_menu_handler/get_select_action
# @brief 旋转模式情况下获取玩家左键情况，需要进行二次确认
# @executor Menu

execute on passengers if entity @s[type=minecraft:interaction] store result score temp glbs_common run function global_shop:logic/interactor/get_left_click_action

# 玩家二次确认
   # 条件 1：如果本次是左键
   # 条件 2：上一次不是空点击
   # 就将最新操作设置为左键确认，条件 2 不是“上一次操作是左键”的原因是，上一次如果是左键确认，那么也应该保持左键确认，所以条件 2 应该是“上一次操作是左键或左键确认”，可以简化为“上一次不是空点击”
execute if score temp glbs_common = Action::LEFT_CLICK glbs_common unless score @s glbs_last_action = Action::NO_ACTION_THIS_PLAYER glbs_common run return run scoreboard players operation @s glbs_last_action = Action::LEFT_CLICK_CONFIRM glbs_common

# 玩家第一次左键
execute if score temp glbs_common = Action::LEFT_CLICK glbs_common run scoreboard players operation @s glbs_last_action = Action::LEFT_CLICK glbs_common
return run scoreboard players get temp glbs_common