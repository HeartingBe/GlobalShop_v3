# @brief 管理员输入玩家名字来 ban/deban 玩家

execute unless data storage global_shop:common admin_input run return run function global_shop:settings_/try_ban_deban_player/no_input

# 获取玩家 uid，出参是 playerUid
function global_shop:logic/player/get_uid_by_name

execute if score playerUid glbs_common matches ..0 run return run tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.admin_settings.ban_player.no_register","color":"red"}]

function global_shop:logic/player/ban_deban_player