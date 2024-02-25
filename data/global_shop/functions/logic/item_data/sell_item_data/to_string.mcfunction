#> global_shop:logic/item_data/sell_item_data/to_string
# @param g_itemData
# @param g_text
# @executor TextDisplay

data remove storage global_shop:common g_text

data modify storage global_shop:common g_text append value {"text":"  "}

# 解析原版物品信息
    # 解析物品名字
    function global_shop:logic/item_data/parse_customname

    # 解析附魔
    function global_shop:logic/item_data/parse_enchantment

    # 解析 Lore
    function global_shop:logic/item_data/parse_lore

    # 解析属性
    # 暂时不做

    # 解析无法破坏标签
    # 暂时不做

    # 解析可以被放置在方块上，可以破坏方块的标签
    # 暂时不做
# 解析商店物品信息
function global_shop:logic/item_data/sell_shop_item_data/parse_global_shop_info

# 解析物品命名空间 id
function global_shop:logic/item_data/parse_item_id

# 解析 nbt 标签数量
function global_shop:logic/item_data/parse_nbt_num
data modify storage global_shop:common g_text append value {"text":"  "}