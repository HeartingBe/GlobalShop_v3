# @executor Menu

# 玩家点击菜单外的地方
execute if score @s glbs_last_action_target_order matches -1 run return run function global_shop:logic/menu/handlers/menu_handler/handle/player_left_click/null

# 用 glbs_last_action_target_id 获取物品信息
   # 玩家点击空项，无任何效果，然后返回
   execute if score @s glbs_last_action_target_id matches 0 run return run function global_shop:logic/menu/handlers/rotatable_menu_handler/handle/player_left_click/click_control_null_item
   # 玩家点击非空项，先获取物品信息
   function global_shop:storage/store_manager/get_sell_shop_list_elem_by_id

# 物品不存在，刷新显示
execute unless data storage global_shop:common g_itemData run return run function global_shop:logic/menu/handlers/sell_shop_handler/handle/item_not_exist

# 玩家左键确认
execute if score @s glbs_last_action = Action::LEFT_CLICK_CONFIRM glbs_common run return run function global_shop:logic/menu/handlers/sell_shop_handler/handle/player_left_click_confirm

# 玩家首次左键
   # log
   #execute on passengers if entity @s[type=minecraft:player] run title @s actionbar ["首次左键"]
   # Menu 更新自身状态
      # 实际此处无状态量和记录量需要更新
   # 向玩家 tellraw 发送该物品信息
   execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/sell_shop_handler/handle/send_item_info_to_player