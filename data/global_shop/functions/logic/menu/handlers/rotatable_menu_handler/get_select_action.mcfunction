#> global_shop:logic/menu/handlers/rotatable_menu_handler/get_select_action
# @brief 旋转模式情况下获取玩家左键情况，需要进行二次确认
# @executor Menu

execute on passengers if entity @s[type=minecraft:interaction] store result score temp glbs_common run function global_shop:logic/interactor/get_left_click_action

# 二次确认
execute if score temp glbs_common = Action::LEFT_CLICK glbs_common if score @s glbs_last_action = Action::LEFT_CLICK glbs_common run return run scoreboard players get Action::LEFT_CLICK_CONFIRM glbs_common

return run scoreboard players get temp glbs_common