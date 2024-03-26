# @brief 获取玩家右键情况
# @executor Menu
# @return Action

execute on passengers if entity @s[type=minecraft:interaction] run return run function global_shop:logic/interactor/get_right_click_action