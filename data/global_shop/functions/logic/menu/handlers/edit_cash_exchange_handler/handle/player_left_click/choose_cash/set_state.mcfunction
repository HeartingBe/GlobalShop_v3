# @param temp Menu 记录的玩家看向的物品序号
# @executor ItemDisplayEntity

# 之前左键的物品不亮
execute unless score @s glbs_order = temp glbs_common if score @s glbs_order = chosen_cash_order glbs_common run return run function global_shop:logic/menu/handlers/main_menu_handler/handle/highlight_item_and_display_text/is_not_target

# 高亮现在左键的物品
execute if score @s glbs_order = temp glbs_common run function global_shop:logic/item_display_entity/set_state_will_set