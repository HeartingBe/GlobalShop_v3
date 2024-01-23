# 不是被看的物品，且正在高亮，就去掉高亮
execute unless score @s glbs_order = temp glbs_common run return run function global_shop:logic/menu/handlers/main_menu_handler/handle/highlight_item_and_display_text/is_not_target

function global_shop:logic/item_display_entity/set_state_highlight
function global_shop:logic/item_display_entity/display_text