# @brief 清除物品展示实体和数据
# @executor ItemDisplayEntity

tag @s remove global_shop
tag @s add glbs_to_kill_1
tag @s add glbs_to_kill_2

scoreboard players reset @s glbs_order

function global_shop:logic/item_display_entity/disappear