# @brief 重新展示文本、重新高亮（相当于玩家重新看向这个物品）
# @executor ItemDisplayEntity

# 物品展示实体去掉高亮
function global_shop:logic/item_display_entity/set_state_normal
# 重置 Menu 记录的上一次玩家看向的序号
execute on vehicle run scoreboard players set @s glbs_last_view_order 0
# 重置 Menu 记录的操作目标
execute on vehicle run scoreboard players set @s glbs_last_target -1
# 清除文字框
execute on vehicle on passengers if entity @s[type=minecraft:text_display] run function global_shop:logic/text_display/clear_text