# @param g_itemData
# @param g_text
# @executor TextDisplay

# 换行
function global_shop:logic/item_data/add_seperator

# 分割线（会新起一行）
function global_shop:logic/item_data/add_diviver

# 写入 id
   # 换行
   function global_shop:logic/item_data/add_seperator
   # 文字和 id
   data modify storage global_shop:common g_text append value {"text":"编号: ","color":"white","extra":[{"storage":"global_shop:common","nbt":"g_itemData.tag.global_shop.id","color":"yellow"}]}

# 写入价格
   # 换行
   function global_shop:logic/item_data/add_seperator
   # 文字和 id
   data modify storage global_shop:common g_text append value {"text":"售价: ","color":"white","extra":[{"storage":"global_shop:common","nbt":"g_itemData.tag.global_shop.price","color":"yellow"}]}

# 写入退回理由
   # 换行
   function global_shop:logic/item_data/add_seperator
   # 退回理由
   data modify storage global_shop:common g_text append value {"text":"退回原因: ","color":"white","extra":[{"storage":"global_shop:common","nbt":"g_itemData.tag.global_shop.returnReason","interpret":1}]}