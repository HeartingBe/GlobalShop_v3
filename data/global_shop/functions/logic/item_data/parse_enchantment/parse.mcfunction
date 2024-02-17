#获取翻译文本
function global_shop:logic/item_data/parse_enchantment/get_translate_string

#添加到文本展示实体
data modify storage global_shop:common temp.jsontext.translate set from storage global_shop:common temp.translate_key
data modify storage global_shop:common temp.jsontext.fallback set from storage global_shop:common temp.enchantments[0].id
data modify storage global_shop:common temp.jsontext merge value {type:"translatable",color:"gray",italic:0}
data modify storage global_shop:common g_text append from storage global_shop:common temp.jsontext
function global_shop:logic/item_data/to_string/add_seperator