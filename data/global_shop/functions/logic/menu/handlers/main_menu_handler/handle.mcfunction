# @brief 主菜单逻辑
# @executor Menu

# 判断玩家右键
   # 主菜单右键无效，直接通知玩家

# 判断玩家左键

# 获取看向的控件序号
execute store result score temp glbs_common run function global_shop:logic/menu/handlers/menu_handler/get_viewed_item_order
   # 不要有下面这句，如果玩家从“看物品”转变为“未看物品”，可以放程序走到最下面高亮物品的逻辑，这会去掉高亮（并且在下面 Menu 更新自身状态时，将上一个看向的序号记录为 -1），之后如果玩家持续不看物品，就会在下面判断序号不变直接返回
   #execute if score temp glbs_common matches -1 run return 0
# 序号不变，说明玩家未改变视角
execute if score temp glbs_common = @s glbs_last_action_target run return 0

# Menu 更新自身状态
function global_shop:logic/menu/perform/on_update
# 选中物品展示实体，高亮并显示文本
execute as @e[distance=..5,type=minecraft:item_display,tag=global_shop] run function global_shop:logic/menu/handlers/main_menu_handler/handle/highlight_item_and_display_text