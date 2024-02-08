# @brief 玩家浏览玩家商店物品并看向新的物品时高亮显示该物品。获取该物品 id 并写入 Menu
# @param temp 玩家看向的物品展示实体的序号
# @executor ItemDisplayEntity

# 不是被看的物品，且正在高亮，就去掉高亮
execute unless score @s glbs_order = temp glbs_common run return run function global_shop:logic/menu/handlers/main_menu_handler/handle/highlight_item_and_display_text/is_not_target

# 是被看的物品（只可能有一个物品展示实体执行到），检查是否存在
   # 获取 id 并写入 Menu 中
   execute store result score temp2 glbs_common run data get entity @s item.tag.global_shop.id
   # 是空项，直接返回
   execute if score temp2 glbs_common matches 0 as 00000d3a-0000-0d3a-0000-17cc000017cc on vehicle run return run scoreboard players set @s glbs_last_action_target_id 0
   # 获取物品信息
   execute as 00000d3a-0000-0d3a-0000-17cc000017cc on vehicle run scoreboard players operation @s glbs_last_action_target_id = temp2 glbs_common
   execute store result score sellerUid glbs_common run data get entity @s item.tag.global_shop.sourcePlayerUid
   execute as 00000d3a-0000-0d3a-0000-17cc000017cc on vehicle run function global_shop:storage/store_manager/get_player_selling_list_elem_by_id
      # 物品不存在
      execute unless data storage global_shop:common g_itemData as 00000d3a-0000-0d3a-0000-17cc000017cc on vehicle run return run scoreboard players set @s glbs_last_action_target_id -1
      # 物品存在，高亮、展示文本
      function global_shop:logic/item_display_entity/set_state_highlight
      function global_shop:logic/item_display_entity/display_text