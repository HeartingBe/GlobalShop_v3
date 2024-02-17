# @param g_itemData
# @param g_text
# @executor TextDisplay

# @other 这里不要使用变量 temp

data remove storage global_shop:common g_text

# 解析原版物品信息
   # 解析物品名字
   function global_shop:logic/item_data/parse_customname
   # 解析附魔

   # 解析 Lore
   function global_shop:logic/item_data/parse_lore

# 解析商店物品信息
function global_shop:logic/item_data/player_shop_item_data/parse_global_shop_info

# 解析物品命名空间 id
function global_shop:logic/item_data/parse_item_id

# 解析 nbt 标签
function global_shop:logic/item_data/parse_nbt_num