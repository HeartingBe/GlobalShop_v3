# @executor Admin

# 获取上一个左键的设置选项 id
execute on vehicle run scoreboard players operation temp glbs_common = @s glbs_last_target

# 处理不同的设置输入
    # 设置自定义金钱记分板
    execute if score temp glbs_common = SETTING_MODIFY_MONEY_SCOREBOARD glbs_common run return run function global_shop:logic/menu/handlers/admin_setting_handler/handle/check_player_input/modify_money_scoreboard

# 无效输入
function global_shop:logic/menu/handlers/menu_handler/handle/invalid_player_input