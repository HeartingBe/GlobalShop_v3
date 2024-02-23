# @brief 清除周围 5 格内的文本展示实体
# @executor -

execute positioned ~ ~1 ~ as @e[type=minecraft:text_display,distance=..5,tag=global_shop] run function global_shop:logic/text_display/kill