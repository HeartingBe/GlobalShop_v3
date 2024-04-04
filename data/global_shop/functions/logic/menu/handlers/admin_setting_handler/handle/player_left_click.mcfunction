# @executor Menu

# 用 glbs_last_view_id 获取物品信息
    # 玩家点击空项或菜单外，无任何效果，然后返回
    execute if score @s glbs_last_view_id matches 0 run return run function global_shop:logic/menu/handlers/rotatable_menu_handler/handle/player_left_click/click_control_null_item

# 处理不同的设置
    # 设置自定义金钱记分板
    execute if score @s glbs_last_view_id = SETTING_CUSTOM_MONEY_SCOREBOARD glbs_common run return run execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/admin_setting_handler/handle/player_left_click/setting/modify_money_scoreboard
    # 设置自定义语言
    execute if score @s glbs_last_view_id = SETTING_CUSTOM_LANGUAGE glbs_common run return run execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/admin_setting_handler/handle/player_left_click/setting/modify_language
    # 查看某玩家禁用状态
    execute if score @s glbs_last_view_id = SETTING_BAN_PLAYER_STATE glbs_common run return run execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/admin_setting_handler/handle/player_left_click/setting/get_ban_state
    # 禁止、允许某玩家使用商店
    execute if score @s glbs_last_view_id = SETTING_BAN_PLAYER glbs_common run return run execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/admin_setting_handler/handle/player_left_click/setting/ban_deban_player
    # 重置所有玩家数据（玩家商店、出售商店、回收商店、购买记录、出售记录、退回物品）
    execute if score @s glbs_last_view_id = SETTING_RESET_DYNAMIC_DATA glbs_common run execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/admin_setting_handler/handle/player_left_click/setting/reset_dynamic_data
    