# @executor Menu

execute on passengers if entity @s[type=minecraft:player] run title @s actionbar ["左键位置无效"]

# 清除 lastAction_
scoreboard players operation @s glbs_last_action = Action::NO_ACTION_THIS_PLAYER glbs_common