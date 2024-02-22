#> global_shop:logic/menu/polymorphic_mode/9_to_11

# 编辑模式菜单的处理逻辑 9
execute if score @s glbs_mode = Mode::EDIT_MODE glbs_common run return run function global_shop:logic/menu/handlers/edit_main_menu_handler/handle