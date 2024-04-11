# @brief 管理员输入玩家名字来 ban/deban 玩家

# 未输入
execute store result score temp glbs_common run data get storage global_shop:common admin_input
execute if score temp glbs_common matches 0 run return run function global_shop:settings_/try_ban_deban_player/no_input

# 不允许输入空格
execute store result score hasSpace glbs_common run function global_shop:logic/inputter/is_space_in_input
execute if score hasSpace glbs_common matches 1 run return run function global_shop:logic/inputter/tip_cannot_input_space

function global_shop:logic/player/ban_deban_player

data remove storage global_shop:common admin_input