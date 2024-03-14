# 玩家个人设置的处理逻辑 13
execute if score @s glbs_mode = Mode::PLAYER_SETTING glbs_common run return run function global_shop:logic/menu/handlers/player_setting_handler/handle

# 管理员全局设置的处理逻辑 14
execute if score @s glbs_mode = Mode::ADMIN_SETTING glbs_common run return run function global_shop:logic/menu/handlers/admin_setting_handler/handle