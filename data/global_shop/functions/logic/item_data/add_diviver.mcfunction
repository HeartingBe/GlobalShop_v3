# 前面没内容则不要分割线
execute unless data storage global_shop:common g_text run return 0

# 换行（分割线单独一行）
function global_shop:logic/item_data/to_string/add_seperator
# 写入分割线
data modify storage global_shop:common g_text append value {"text":"------------","color":"gray"}