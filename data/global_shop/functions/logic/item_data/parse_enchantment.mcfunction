#> global_shop:logic/item_data/parse_enchantment

# 遍历附魔列表
data remove storage global_shop:common temp
execute store result score temp glbs_common if data storage global_shop:common {g_itemData:{id:"minecraft:enchanted_book"}}
execute if score temp glbs_common matches 1 run data modify storage global_shop:common temp.enchantments set from storage global_shop:common g_itemData.tag.StoredEnchantments
execute if score temp glbs_common matches 0 run data modify storage global_shop:common temp.enchantments set from storage global_shop:common g_itemData.tag.Enchantments

# 最多显示 15 个附魔
execute store result score enchSize glbs_common run data get storage global_shop:common temp.enchantments
execute if score enchSize glbs_common matches 16.. run function global_shop:logic/item_data/parse_enchantment/limit_size

execute if data storage global_shop:common temp.enchantments[0] run function global_shop:logic/item_data/parse_enchantment/foreach

# 写入多少个附魔未显示
execute if score enchSize glbs_common matches ..15 run return 0
scoreboard players remove enchSize glbs_common 15
# 换行
   function global_shop:logic/item_data/add_seperator
data modify storage global_shop:common g_text append value {"text":"...(","color":"gray","italic":1,"extra":[{"score":{"objective":"glbs_common","name":"enchSize"},"color":"gray","italic":1},{"text":")","color":"gray","italic":1}]}