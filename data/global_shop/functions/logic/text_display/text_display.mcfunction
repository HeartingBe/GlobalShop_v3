# @brief 生成文本展示实体
# @param g_text
# @executor Menu

# 清除周围已存在的文本展示实体
function global_shop:logic/text_display/kill

# 生成新的文本展示实体
execute on passengers if entity @s[type=minecraft:player] at @s rotated ~ 0 anchored eyes positioned ^-1 ^ ^3.5 summon minecraft:text_display run function global_shop:logic/text_display/text_display/set_data_and_facing