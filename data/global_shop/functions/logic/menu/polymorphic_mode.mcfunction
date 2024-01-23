# @brief 根据不同模式调不同 handler 处理逻辑
# @executor Menu

# 主菜单的处理逻辑
execute if score @s glbs_mode = MODE_MAIN glbs_common run function global_shop:logic/menu/handlers/main_menu_handler/handle