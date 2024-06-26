# @executor Menu

# 用 glbs_last_view_id 获取物品信息
    # 玩家点击空项或菜单外，无任何效果，然后返回
    execute if score @s glbs_last_view_id matches 0 run return run function global_shop:logic/menu/handlers/rotatable_menu_handler/handle/player_left_click/click_control_null_item

# 处理不同的请求
    # 物品信息框大小
        # 引导设置物品信息框大小
        execute if score @s glbs_last_view_id = SETTING_MODIFY_ITEM_FRAME_SIZE glbs_common run return run execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/player_setting_handler/handle/player_left_click/setting/modify_item_frame_size
        # 恢复默认物品信息框大小
        execute if score @s glbs_last_view_id = SETTING_MODIFY_ITEM_FRAME_SIZE_RST glbs_common run return run execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/player_setting_handler/handle/player_left_click/setting/modify_item_frame_size_rst
    # 物品信息框位置
        # 设置物品信息框上下位置
        execute if score @s glbs_last_view_id = SETTING_MODIFY_ITEM_FRAME_POSITION_V glbs_common run return run execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/player_setting_handler/handle/player_left_click/setting/modify_item_frame_position_v
        # 设置物品信息框左右位置
        execute if score @s glbs_last_view_id = SETTING_MODIFY_ITEM_FRAME_POSITION_H glbs_common run return run execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/player_setting_handler/handle/player_left_click/setting/modify_item_frame_position_h
        # 设置物品信息框前后位置
        execute if score @s glbs_last_view_id = SETTING_MODIFY_ITEM_FRAME_POSITION_D glbs_common run return run execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/player_setting_handler/handle/player_left_click/setting/modify_item_frame_position_d
        # 恢复默认物品信息框位置
        execute if score @s glbs_last_view_id = SETTING_MODIFY_ITEM_FRAME_POSITION_RST glbs_common run execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/player_setting_handler/handle/player_left_click/setting/modify_item_frame_position_rst