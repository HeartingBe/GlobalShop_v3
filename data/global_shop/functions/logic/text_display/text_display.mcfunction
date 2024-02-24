#> global_shop:logic/text_display/text_display
# @brief 生成文本展示实体
# @param g_text
# @executor Menu

# 清除周围已存在的文本展示实体
function global_shop:logic/text_display/kill_text_display_around

# 生成新的文本展示实体
#execute on passengers if entity @s[type=minecraft:player] anchored eyes rotated as @s positioned ^ ^ ^2.8 summon minecraft:text_display run function global_shop:logic/text_display/text_display/parse_text_and_set_state
   # 尝试将物品展示实体生成到玩家处，然后用偏移将渲染位置改为玩家右前方
   execute on passengers if entity @s[type=minecraft:player] anchored eyes summon minecraft:text_display run function global_shop:logic/text_display/text_display/parse_text_and_set_state