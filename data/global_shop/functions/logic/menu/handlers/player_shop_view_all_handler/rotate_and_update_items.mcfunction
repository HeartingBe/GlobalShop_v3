# @brief 产生水平转动导致出现列数差时，更新菜单
# @param g_itemsToDisplay 物品数据
# @param g_columnDiff 列数差
# @executor Menu

# 更新自身 beginIndex_
scoreboard players operation temp glbs_common = g_columnDiff glbs_common
scoreboard players operation temp glbs_common *= ITEM_NUM_PER_COLUMN glbs_common
scoreboard players operation @s glbs_begin_index += temp glbs_common

# 旋转
function global_shop:logic/menu/handlers/menu_handler/rotate

# 重置 lastAction_ lastActionTarget_（否则水平旋转后看向新的物品将不会高亮）
scoreboard players set @s glbs_last_action_target -1
scoreboard players operation @s glbs_last_action = NO_ACTION_THIS_PLAYER glbs_common

# 取玩家商店物品数据
function global_shop:storage/store_manager/get_player_shop_list_page

# 物品展示实体的生成、更新和删除
   # 计算 orderDiff
      # log
      #tellraw @a ["g_columnDiff:",{"score":{"objective":"glbs_common","name":"g_columnDiff"}}]
   scoreboard players operation temp glbs_common = g_columnDiff glbs_common
   execute store result score temp glbs_common run function global_shop:logic/math_utils/abs
      # log
      #tellraw @a ["abs(g_columnDiff):",{"score":{"objective":"glbs_common","name":"temp"}}]
   execute store result score orderDiff glbs_common run scoreboard players operation temp glbs_common *= 3 glbs_common
   # 获取 targetOrder
   execute store result score targetOrder glbs_common run function global_shop:logic/menu/handlers/rotatable_menu_handler/get_viewed_item_order
# if(g_columnDiff < 0)
   execute if score g_columnDiff glbs_common matches ..-1 run return run function global_shop:logic/menu/handlers/player_shop_view_all_handler/rotate_and_update_items/1
# else
   # 计算 end（先计算，避免下面调 RangeUpdateAndDelete 传第二个参数时 orderDiff 改变符号）
   scoreboard players operation end glbs_common = orderDiff glbs_common
   execute if score orderDiff glbs_common matches ..-1 run scoreboard players set end glbs_common 0
   scoreboard players set temp glbs_common 27
   execute store result score end glbs_common run scoreboard players operation temp glbs_common -= end glbs_common
   # log
   #tellraw @a ["orderDiff:",{"score":{"objective":"glbs_common","name":"orderDiff"}},"       ","end:",{"score":{"objective":"glbs_common","name":"end"}}]

   scoreboard players set temp glbs_common 0
   execute store result score orderDiff glbs_common run scoreboard players operation temp glbs_common -= orderDiff glbs_common
   function global_shop:ui/display_manager/range_update_and_delete

   scoreboard players operation begin glbs_common = end glbs_common
   scoreboard players set end glbs_common 27
   # log
   #tellraw @a ["begin: ",{"score":{"objective":"glbs_common","name":"begin"}},"         end: ",{"score":{"objective":"glbs_common","name":"end"}}]
   execute rotated as @s run function global_shop:ui/display_manager/range_summon
   function global_shop:ui/display_manager/on_item_summon