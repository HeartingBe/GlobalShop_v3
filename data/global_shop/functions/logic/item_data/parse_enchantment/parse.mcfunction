#获取ID翻译文本
function global_shop:logic/item_data/parse_enchantment/get_translate_string

#添加到文本
data modify storage global_shop:common temp.jsontext.translate set from storage global_shop:common temp.translate_key
data modify storage global_shop:common temp.jsontext.fallback set from storage global_shop:common temp.enchantments[0].id
data modify storage global_shop:common temp.jsontext merge value {type:"translatable",color:"gray",italic:0}

#诅咒附魔着色
execute if score isntDefault glbs_common matches 0 run function global_shop:logic/item_data/parse_enchantment/macro/if_curse with storage global_shop:common temp.enchantments[0]

#添加等级字符串
execute if score isntDefault glbs_common matches 0 run function global_shop:logic/item_data/parse_enchantment/append_level_string
execute if score isntDefault glbs_common matches 1 run function global_shop:logic/item_data/parse_enchantment/macro/append_level_string with storage global_shop:common temp.enchantments[0]

# 将结果写入 g_text
   # 换行
   execute if data storage global_shop:common g_text run function global_shop:logic/item_data/to_string/add_seperator
   # 写入
   data modify storage global_shop:common g_text append from storage global_shop:common temp.jsontext
   data remove storage global_shop:common temp.jsontext