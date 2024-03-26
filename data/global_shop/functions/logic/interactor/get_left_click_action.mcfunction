# @brief 判断玩家左键
# @executor Interactor
# @return Action

# 获取 ACTION
execute store result score temp glbs_common run function global_shop:logic/interactor/get_left_click_action/get_action
# 清除 ACTION
function global_shop:logic/interactor/clear_left_click_action

return run scoreboard players get temp glbs_common