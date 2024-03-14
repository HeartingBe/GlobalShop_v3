# @executor Player

# 获取上一个左键的设置选项 id
execute on vehicle run scoreboard players operation temp glbs_common = @s glbs_last_target

# 处理不同的设置输入
    # 物品信息框大小
        # 设置物品信息框大小
        execute if score temp glbs_common = SETTING_MODIFY_ITEM_FRAME_SIZE glbs_common run return run function global_shop:logic/menu/handlers/player_setting_handler/handle/check_player_input/modify_item_frame_size
    # 物品信息框位置
        # 设置物品信息框上下位置
        execute if score temp glbs_common = SETTING_MODIFY_ITEM_FRAME_POSITION_V glbs_common run return run function global_shop:logic/menu/handlers/player_setting_handler/handle/check_player_input/modify_item_frame_position_v
        # 设置物品信息框左右位置
        execute if score temp glbs_common = SETTING_MODIFY_ITEM_FRAME_POSITION_H glbs_common run return run function global_shop:logic/menu/handlers/player_setting_handler/handle/check_player_input/modify_item_frame_position_h
        # 设置物品信息框前后位置
        execute if score temp glbs_common = SETTING_MODIFY_ITEM_FRAME_POSITION_D glbs_common run return run function global_shop:logic/menu/handlers/player_setting_handler/handle/check_player_input/modify_item_frame_position_d

# 无效输入
function global_shop:logic/menu/handlers/menu_handler/handle/invalid_player_input