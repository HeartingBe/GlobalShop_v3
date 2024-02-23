# 清除左键信息
execute on passengers if entity @s[type=minecraft:interaction] run function global_shop:logic/interactor/clear_left_click_action

# 引导管理员向回收商店添加物品
execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/edit_main_menu_handler/handle/player_left_click/add_recycle_item/send_text_and_enable_trigger

# 记录上一次左键的物品的序号 order
function global_shop:logic/menu/handlers/menu_handler/handle/update_last_click_order