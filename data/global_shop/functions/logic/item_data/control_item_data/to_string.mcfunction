# @param g_itemData
# @param g_text
# @executor TextDisplay

# @other 这里不要使用变量 temp

# 控件的文本以 nbt 列表形式存储在 g_itemData.tag.global_shop.text，直接写入 g_text
data modify storage global_shop:common g_text set from storage global_shop:common g_itemData.tag.global_shop.text