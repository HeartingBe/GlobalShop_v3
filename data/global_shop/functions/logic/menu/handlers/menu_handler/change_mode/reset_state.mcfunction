# @brief 切换模式时重置 Menu 记录的各种状态量
# @executor Menu

# 清除左右键信息
execute on passengers if entity @s[type=minecraft:interaction] run function global_shop:logic/interactor/clear_left_and_right_click_action
# 初始化 lastAction_
scoreboard players operation @s glbs_last_action = Action::NO_ACTION_THIS_PLAYER glbs_common
# 上一个看向的物品的序号 order
scoreboard players reset @s glbs_last_action_target_order
# 上一个看向的物品的 id
scoreboard players reset @s glbs_last_action_target_id
# 展示物品的起始下标
scoreboard players set @s glbs_begin_index 0
# 清除周围的文本展示实体
function global_shop:logic/text_display/kill