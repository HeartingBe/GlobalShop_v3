# @return Action

# 没有左键事件
execute unless data entity @s attack run return run scoreboard players get Action::NO_ACTION_THIS_PLAYER glbs_common

# 获取左键来源 UUID
execute store result score temp1 glbs_common run data get entity @s attack.player[0]
execute store result score temp2 glbs_common run data get entity @s attack.player[1]
execute store result score temp3 glbs_common run data get entity @s attack.player[2]
execute store result score temp4 glbs_common run data get entity @s attack.player[3]

# 获取骑乘玩家 UUID
execute on vehicle on passengers if entity @s[type=minecraft:player] run function global_shop:logic/interactor/get_right_click_action/get_player_uuid
   # 是本玩家左键的
   execute if score temp1 glbs_common = temp5 glbs_common if score temp2 glbs_common = temp6 glbs_common if score temp3 glbs_common = temp7 glbs_common if score temp4 glbs_common = temp8 glbs_common run return run scoreboard players get Action::LEFT_CLICK glbs_common

return run scoreboard players get Action::NO_ACTION_THIS_PLAYER glbs_common