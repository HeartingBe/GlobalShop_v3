# @brief 清除周围的文本展示实体
# @executor Menu
execute as @e[distance=..5,type=minecraft:item_display,tag=global_shop] run function global_shop:logic/item_display_entity/kill