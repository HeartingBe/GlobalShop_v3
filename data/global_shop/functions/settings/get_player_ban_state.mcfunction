# @brief 管理员输入玩家名字来查询该玩家的封禁状态

execute unless data storage global_shop:common admin_input run return run function global_shop:settings_/get_player_ban_state/no_input

# 获取玩家 uid，出参是 playerUid
function global_shop:logic/player/get_uid_by_name

execute if score playerUid glbs_common matches ..0 run return run tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.admin_settings.get_ban_state.no_register","color":"red"}]

scoreboard players set banState glbs_common 0
data remove storage global_shop:common temp
execute store result storage global_shop:common temp.uid int 1 run scoreboard players get playerUid glbs_common
function global_shop:logic/player/get_ban_state with storage global_shop:common temp

execute if score banState glbs_common matches 0 run return run function global_shop:settings_/get_player_ban_state/banned

function global_shop:settings_/get_player_ban_state/unbanned