# @brief 生成文本展示实体
# @param g_text
# @executor Menu

# 清除周围已存在的文本展示实体
function global_shop:logic/text_display/kill

# 生成新的文本展示实体
execute on passengers if entity @s[type=minecraft:player] at @s anchored eyes rotated ~20 ~ positioned ^ ^ ^3.6 summon minecraft:text_display run function global_shop:logic/text_display/text_display/parse_text_and_set_state