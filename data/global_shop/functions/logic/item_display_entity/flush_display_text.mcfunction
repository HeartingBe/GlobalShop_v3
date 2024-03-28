#> global_shop:logic/item_display_entity/flush_display_text
# 根据作为执行者的物品展示实体，刷新文本展示实体的物品展示信息
# @executor ItemDisplayEntity 物品展示实体

data modify storage global_shop:common g_itemData set from entity @s item
function global_shop:logic/item_display_entity/display_text