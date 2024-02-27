#> global_shop:logic/item_data/cash_item_data/to_string
# @param g_itemData
# @param g_text
# @executor TextDisplay

data remove storage global_shop:common g_text

data modify storage global_shop:common g_text append value {"text":"  "}

# 解析原版物品信息
    # 解析物品名字
    function global_shop:logic/item_data/parse_customname

    # 解析 Lore
    function global_shop:logic/item_data/parse_lore

# 解析货币信息
function global_shop:logic/item_data/cash_item_data/parse_cash_info

data modify storage global_shop:common g_text append value {"text":"  "}