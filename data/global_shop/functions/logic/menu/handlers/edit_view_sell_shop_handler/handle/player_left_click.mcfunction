#> global_shop:logic/menu/handlers/edit_view_sell_shop_handler/handle/player_left_click
#
# 处理编辑菜单的左键操作
# @executor Menu

# 用 glbs_last_view_id 获取物品信息
   # 玩家点击空项或菜单外，无任何效果，然后返回
   execute if score @s glbs_last_view_id matches 0 run return run function global_shop:logic/menu/handlers/rotatable_menu_handler/handle/player_left_click/click_control_null_item
   # 玩家点击非空项，先获取物品信息
      # 同时，物品的 index 会存储在 index glbs_common
   function global_shop:storage/store_manager/get_sell_shop_list_elem_by_id

# 物品不存在，刷新显示
execute unless data storage global_shop:common g_itemData run return run function global_shop:logic/menu/handlers/edit_view_sell_shop_handler/handle/item_not_exist

# 玩家左键确认
   # index glbs_common 在下面这个函数中还要使用
execute if score @s glbs_last_action = Action::LEFT_CLICK_CONFIRM glbs_common run return run function global_shop:logic/menu/handlers/edit_view_sell_shop_handler/handle/player_left_click_confirm

# 玩家首次左键
    # 物品变红色提示玩家即将删除该物品
   scoreboard players operation order glbs_common = @s glbs_last_view_order
    execute on passengers if entity @s[type=minecraft:item_display,tag=!glbs_killed] if score @s glbs_order = order glbs_common run function global_shop:logic/item_display_entity/set_state_will_delete

# 删除物品的确认提示
execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/edit_view_sell_shop_handler/handle/player_left_click/tip