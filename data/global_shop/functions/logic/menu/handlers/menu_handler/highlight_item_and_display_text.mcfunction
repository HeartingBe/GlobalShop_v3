#> global_shop:logic/menu/handlers/menu_handler/highlight_item_and_display_text
# @brief 非旋转模式下，玩家看向新的物品时高亮显示该物品。获取该物品 id 并写入 Menu
# @param targetOrder 玩家看向的物品序号
# @executor ItemDisplayEntity

# 不是被看的物品，且正在高亮，就去掉高亮
execute unless score @s glbs_order = targetOrder glbs_common run return run function global_shop:logic/menu/handlers/main_menu_handler/handle/highlight_item_and_display_text/is_not_target

# 是被看的物品（只可能有一个物品展示实体执行到），检查是否存在
   # 获取 id 并写入 Menu 中
   execute store result score temp2 glbs_common run data get entity @s item.tag.global_shop.id
      # 是空项，直接返回
      execute if score temp2 glbs_common matches 0 on vehicle run return run scoreboard players set @s glbs_last_view_id 0
      # 写入
      execute on vehicle run scoreboard players operation @s glbs_last_view_id = temp2 glbs_common
   # 物品信息已完整拷贝在 @s item
   data modify storage global_shop:common g_itemData set from entity @s item
   # 音效 看向新的物品
   #execute on vehicle on passengers if entity @s[type=minecraft:player] run function global_shop:sound/target
   # 高亮、展示文本
   function global_shop:logic/item_display_entity/set_state_highlight
   function global_shop:logic/item_display_entity/display_text