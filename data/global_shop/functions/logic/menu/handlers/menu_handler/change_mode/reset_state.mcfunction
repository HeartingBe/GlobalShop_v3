# @brief 切换非旋转模式时重置 Menu 记录的各种状态量
# @executor Menu

# 清除左右键信息
execute on passengers if entity @s[type=minecraft:interaction] run function global_shop:logic/interactor/clear_left_and_right_click_action
# 初始化 lastAction_
scoreboard players operation @s glbs_last_action = Action::NO_ACTION_THIS_PLAYER glbs_common
# 上一个看向的物品的序号 order
scoreboard players set @s glbs_last_view_order 0
# 上一个看向的物品的 id
scoreboard players set @s glbs_last_view_id 0
# 展示物品的起始下标
scoreboard players set @s glbs_begin_index 0
# 上一个左键的物品的 order 或 id
scoreboard players set @s glbs_last_target -1
# 玩家输入记分板
execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/inputter/reset_and_disable
# 清除文本展示实体的文字
execute on passengers if entity @s[type=minecraft:text_display] run function global_shop:logic/text_display/clear_text
# 清除持有的物品展示实体
function global_shop:logic/menu/kill_item_displays