#> global_shop:logic/menu/handlers/menu_handler/highlight_item_and_display_text
# 不是被看的物品，且正在高亮，就去掉高亮
execute unless score @s glbs_order = temp glbs_common run return run function global_shop:logic/menu/handlers/main_menu_handler/handle/highlight_item_and_display_text/is_not_target

# 是被看的物品
   # 高亮、展示文本
   function global_shop:logic/item_display_entity/set_state_highlight
   function global_shop:logic/item_display_entity/display_text
   # 返回物品 id（约定好将新的被看物品的 id 写入记分板 temp2 glbs_common）
   execute store result score temp2 glbs_common run data get entity @s item.tag.global_shop.id