# @executor Menu

# 用 glbs_last_view_id 获取物品信息
    # 玩家点击空项或菜单外，无任何效果，然后返回
    execute if score @s glbs_last_view_id matches 0 run return run function global_shop:logic/menu/handlers/rotatable_menu_handler/handle/player_left_click/click_control_null_item

# 处理不同的设置
    # 设置物品信息框大小
    execute if score @s glbs_last_view_id = SETTING_MODIFY_MONEY_SCOREBOARD glbs_common run return run execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/admin_setting_handler/handle/player_left_click/setting/modify_money_scoreboard