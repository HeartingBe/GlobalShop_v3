# @executor Menu

# 用 glbs_last_view_id 获取物品信息
   # 玩家点击空项或菜单外，无任何效果，然后返回
   execute if score @s glbs_last_view_id matches 0 run return run function global_shop:logic/menu/handlers/rotatable_menu_handler/handle/player_left_click/click_control_null_item
   # 玩家点击非空项，先获取物品信息
   function global_shop:storage/store_manager/get_return_list_elem_by_uid_and_id

# 物品不存在，刷新显示
execute unless data storage global_shop:common g_itemData run return run function global_shop:logic/menu/handlers/player_shop_view_return_handler/handle/item_not_exist

# 玩家左键确认
execute if score @s glbs_last_action = Action::LEFT_CLICK_CONFIRM glbs_common run return run function global_shop:logic/menu/handlers/player_shop_view_return_handler/handle/player_left_click_confirm

# 玩家首次左键
   # 物品变绿提示玩家即将取回该物品
   scoreboard players operation targetOrder glbs_common = @s glbs_last_view_order
   execute on passengers if entity @s[type=minecraft:item_display,tag=!glbs_killed] if score @s glbs_order = targetOrder glbs_common run function global_shop:logic/item_display_entity/set_state_will_buy
   # log
   #execute on passengers if entity @s[type=minecraft:player] run title @s actionbar ["首次左键"]
   # Menu 更新自身状态
      # 实际此处无状态量和记录量需要更新
   # 提示信息
   execute on passengers if entity @s[type=minecraft:player] run tellraw @s ["\u00a7a再次点击来取回这个物品"]
   function global_shop:sound/target