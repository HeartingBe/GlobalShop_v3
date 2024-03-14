# @brief 获取玩家左键情况（不会进行二次确认）
# @executor Menu

execute on passengers if entity @s[type=minecraft:interaction] run return run function global_shop:logic/interactor/get_left_click_action