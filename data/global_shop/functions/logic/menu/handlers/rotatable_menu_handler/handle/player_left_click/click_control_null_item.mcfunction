# @brief 玩家左键时点击空项，不会有任何效果
# @executor Menu

# 清除 lastAction_
scoreboard players operation @s glbs_last_action = Action::NO_ACTION_THIS_PLAYER glbs_common

# log
#execute on passengers if entity @s[type=minecraft:player] run tellraw @s ["左键空项无效果"]