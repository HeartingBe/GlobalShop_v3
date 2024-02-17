# @param g_itemData
# @param g_text
# @executor TextDisplay

# @other 这里不要使用变量 temp

# 换行
function global_shop:logic/item_data/to_string/add_seperator

# 分割线
function global_shop:logic/item_data/add_diviver

# 写入 id
   # 换行
   function global_shop:logic/item_data/to_string/add_seperator
   # 文字和 id
   data modify storage global_shop:common g_text append value {"text":"编号: ","color":"white","extra":[{"storage":"global_shop:common","nbt":"g_itemData.tag.global_shop.id","color":"yellow"}]}

# 写入价格
   # 换行
   function global_shop:logic/item_data/to_string/add_seperator
   # 文字和 id
   data modify storage global_shop:common g_text append value {"text":"售价: ","color":"white","extra":[{"storage":"global_shop:common","nbt":"g_itemData.tag.global_shop.price","color":"yellow"}]}

# 写入出售玩家
   # 换行
   function global_shop:logic/item_data/to_string/add_seperator
   # 获取出售玩家名
   data remove storage global_shop:common temp
   data modify storage global_shop:common temp.uid set from storage global_shop:common g_itemData.tag.global_shop.sourcePlayerUid
   function global_shop:storage/store_manager/get_player_name with storage global_shop:common temp
   # 写入玩家名
   data modify storage global_shop:common g_text append value {"text":"卖家: ","color":"white","extra":[{"storage":"global_shop:common","nbt":"g_playerName","color":"yellow"}]}