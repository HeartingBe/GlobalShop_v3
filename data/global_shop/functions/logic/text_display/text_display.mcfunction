#> global_shop:logic/text_display/text_display
# @brief 生成文本展示实体，并展示文本
# @param g_itemData
# @executor Menu

# @other 现在已改成 Menu 持有一个 TextDisplay，所以由 Menu 生成时写在 Passengers 里一并生成，此函数暂时弃用

# 生成新的文本展示实体
#execute on passengers if entity @s[type=minecraft:player] anchored eyes rotated as @s positioned ^ ^ ^2.8 summon minecraft:text_display run function global_shop:logic/text_display/text_display/parse_text_and_set_state
   # 尝试将物品展示实体生成到玩家眼睛处，然后用偏移将渲染位置改为玩家右前方
   execute on passengers if entity @s[type=minecraft:player] anchored eyes summon minecraft:text_display run function global_shop:logic/text_display/text_display/set_state_and_parse_text