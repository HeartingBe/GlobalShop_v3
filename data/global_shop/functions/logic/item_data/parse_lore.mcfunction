# @brief 构造 json 列表遍历 Lore
# @other 这里不要使用变量 temp

# Lore.size()
execute store result score size glbs_common run data get storage global_shop:common g_itemData.tag.display.Lore

# 换行
execute if score size glbs_common matches 1.. run function global_shop:logic/item_data/to_string/add_seperator

# 根据 size 构造 json 列表遍历 Lore
execute if score size glbs_common matches 1..8 run return run function global_shop:logic/item_data/parse_lore/1_to_8

execute if score size glbs_common matches 9.. run function global_shop:logic/item_data/parse_lore/9_to_16