# 添加新行
function global_shop:logic/item_data/to_string/add_new_line

# 添加前缀
data modify storage global_shop:common g_text.value[-1].extra append from storage global_shop:storage g_text_prefix

# 添加文字
data modify storage global_shop:common g_text.value[-1].extra[-1].extra append value {"text":"物品信息","color":"green"}