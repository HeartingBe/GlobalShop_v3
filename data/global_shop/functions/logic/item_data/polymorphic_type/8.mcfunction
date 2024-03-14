#> global_shop:logic/item_data/polymorphic_type/8
# @param g_itemData
# @param g_text
# @executor TextDisplay

# 设置按钮的文本以 nbt 列表形式存储在 g_itemData.tag.global_shop.text，直接写入 g_text
data modify storage global_shop:common g_text set from storage global_shop:common g_itemData.tag.global_shop.text