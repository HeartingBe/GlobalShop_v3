# @brief 获取玩家右键信息并清除
# @executor Interactor
# @return Action

# 获取 ACTION
execute store result score temp glbs_common run function global_shop:logic/interactor/get_right_click_action/get_action
# 清除 ACTION
function global_shop:logic/interactor/clear_right_click_action

return run scoreboard players get temp glbs_common