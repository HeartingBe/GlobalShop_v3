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
   data modify storage global_shop:common g_text append value {"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.item_frame.id\"","color":"white","extra":[{"text":": ","color":"white"},{"storage":"global_shop:common","nbt":"g_itemData.tag.global_shop.id","color":"yellow"}]}

# 写入价格
   # 换行
   function global_shop:logic/item_data/add_seperator
   # 文字和 id
   data modify storage global_shop:common g_text append value {"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.item_frame.price\"","color":"white","extra":[{"text":": ","color":"white"},{"storage":"global_shop:common","nbt":"g_itemData.tag.global_shop.price","color":"yellow"}]}

# 写入出售玩家
   # 换行
   function global_shop:logic/item_data/add_seperator
   # 获取设置该出售商店的管理员名字
   data remove storage global_shop:common temp
   data modify storage global_shop:common temp.uid set from storage global_shop:common g_itemData.tag.global_shop.sourcePlayerUid
   function global_shop:storage/store_manager/get_player_name with storage global_shop:common temp
   # 写入玩家名
   data modify storage global_shop:common g_text append value {"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.item_frame.op\"","color":"white","extra":[{"text":": ","color":"white"},{"storage":"global_shop:common","nbt":"g_playerName","color":"yellow"}]}