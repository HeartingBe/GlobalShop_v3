# @brief 管理员输入玩家名字来查询该玩家的封禁状态
# @executor Admin

# 未输入
execute store result score temp glbs_common run data get storage global_shop:common admin_input
execute if score temp glbs_common matches 0 run return run function global_shop:settings_/get_player_ban_state/no_input

# 不允许输入空格
execute store result score hasSpace glbs_common run function global_shop:logic/inputter/is_space_in_input
execute if score hasSpace glbs_common matches 1 run return run function global_shop:logic/inputter/tip_cannot_input_space

scoreboard players set banState glbs_common 0
# 用玩家名字构造宏参数
data remove storage global_shop:common temp
data modify storage global_shop:common temp.name set from storage global_shop:common admin_input
function global_shop:logic/player/get_ban_state with storage global_shop:common temp

execute if score banState glbs_common matches 1 run return run function global_shop:settings_/get_player_ban_state/banned

function global_shop:settings_/get_player_ban_state/unbanned