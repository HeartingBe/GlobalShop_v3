#> global_shop:logic/item_data/cash_item_data/parse_cash_info
# @param g_itemData
# @param g_text
# @executor TextDisplay

# 换行
function global_shop:logic/item_data/add_seperator

# 分割线（会新起一行）
function global_shop:logic/item_data/add_diviver

# 换行
function global_shop:logic/item_data/add_seperator

# 写入兑换比率
data modify storage global_shop:common g_text append value {text:"货币价值：",color:"gold",extra:[{nbt:"g_itemData.tag.global_shop.price",storage:"global_shop:common",color:"aqua"}]}