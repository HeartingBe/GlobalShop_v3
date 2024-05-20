# @brief 清除物品展示实体和数据
# @executor ItemDisplayEntity

tag @s add glbs_killed
tag @s add glbs_kill_delay

tag @s remove glbs_item_highlight
tag @s remove glbs_to_set_state_normal

#文本展示实体改为与物品展示实体一起缩小
#execute on passengers run function global_shop:logic/text_display/kill

scoreboard players reset @s glbs_order

team leave @s

function global_shop:logic/item_display_entity/disappear