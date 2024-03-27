# @brief 浏览历史购买记录时左键，直接向玩家发送购买记录的信息
# @executor Menu

# 用 glbs_last_view_id 获取物品信息
   # 玩家点击空项或菜单外，无任何效果，然后返回
   execute if score @s glbs_last_view_id matches 0 run return run function global_shop:logic/menu/handlers/rotatable_menu_handler/handle/player_left_click/click_control_null_item
   # 玩家重复点击同一记录，返回
   execute if score @s glbs_last_view_id = @s glbs_last_target run return 0
   # 玩家点击非空项，先获取物品信息
   execute on passengers if entity @s[type=minecraft:player] run scoreboard players operation uid glbs_common = @s glbs_uid
   function global_shop:storage/store_manager/get_player_bought_list_elem_by_uid_and_id

# 物品不存在，刷新显示（不可能不存在）
#-

# 向玩家 tellraw 发送该物品信息
execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/player_shop_view_my_bought_handler/handle/send_item_info_to_player

# 记录本次点击的 id
scoreboard players operation @s glbs_last_target = @s glbs_last_view_id