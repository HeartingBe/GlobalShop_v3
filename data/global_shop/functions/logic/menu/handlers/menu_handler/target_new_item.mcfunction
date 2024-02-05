# @executor Menu

# 高亮物品展示实体，并显示文本
   # 用 temp2 存储高亮物品的 id，初始化为 0
   scoreboard players set temp2 glbs_common 0
   # 高亮（约定好将新的被看物品的 id 写入记分板 temp2 glbs_common）
   execute as @e[distance=..5,type=minecraft:item_display,tag=global_shop] run function global_shop:logic/menu/handlers/menu_handler/highlight_item_and_display_text
   # 物品不存在时刷新整页
   execute if score @s glbs_last_action_target_id matches -1 run return run function global_shop:logic/menu/handlers/player_shop_view_all_handler/handle/item_not_exist

# 更新上一次看向的物品展示实体的序号 lastActionTarget_
scoreboard players operation @s glbs_last_action_target_order = temp glbs_common

# 重置 lastAction_
scoreboard players operation @s glbs_last_action = Action::NO_ACTION_THIS_PLAYER glbs_common

# 清除左键信息
execute on passengers if entity @s[type=minecraft:interaction] run function global_shop:logic/interactor/clear_left_click_action