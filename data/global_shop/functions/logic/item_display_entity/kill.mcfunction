# @brief 清除物品展示实体和数据
# @executor ItemDisplayEntity

tag @s add glbs_killed
tag @s add glbs_kill_delay

scoreboard players reset @s glbs_order

team leave @s

function global_shop:logic/item_display_entity/disappear