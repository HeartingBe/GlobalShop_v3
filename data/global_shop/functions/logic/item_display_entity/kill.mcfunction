# @brief 清除物品展示实体和数据
# @executor ItemDisplayEntity

tag @s add glbs_killed
tag @s add glbs_kill_delay

execute on passengers run function global_shop:logic/text_display/kill

scoreboard players reset @s glbs_order

team leave @s

function global_shop:logic/item_display_entity/disappear