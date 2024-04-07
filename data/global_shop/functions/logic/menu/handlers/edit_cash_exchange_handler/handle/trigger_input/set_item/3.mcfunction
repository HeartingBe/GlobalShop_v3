# @param g_itemData 即玩家的 SelectedItem

# 将 global_shop 信息写入
data modify storage global_shop:common g_itemData.tag.global_shop set from storage global_shop:storage g_cashInfo[3].item.tag.global_shop
# 数量始终为 1
data modify storage global_shop:common g_itemData.Count set value 1b
# 没有附魔也添加附魔光效
execute unless data storage global_shop:common g_itemData.tag.Enchantments run data modify storage global_shop:common g_itemData.tag.Enchantments set value [{id:"minecraft:unknown",lvl:1s}]
# 没有自定义名字则添加默认货币自定义名字
execute unless data storage global_shop:common g_itemData.tag.display.Name run data modify storage global_shop:common g_itemData.tag.display.Name set from storage global_shop:menu_preset_and_control DEFAULT_CASH_NAME
# 写入货币信息存储
data modify storage global_shop:storage g_cashInfo[3].item set from storage global_shop:common g_itemData
# 更新菜单上的物品展示实体显示
execute on vehicle on passengers if entity @s[type=minecraft:item_display,tag=!glbs_killed] if score @s glbs_order = temp2 glbs_common run data modify entity @s item set from storage global_shop:common g_itemData
function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_item/success_tellraw