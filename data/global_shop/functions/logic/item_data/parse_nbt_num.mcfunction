# 获取 nbt 数量（随便糊弄一下玩家(bushi) ）
   # tag
   execute store result score num glbs_common run data get storage global_shop:common g_itemData.tag
   # tag.global_shop 不算
   scoreboard players remove num glbs_common 1
   # tag.display 单独计算里面的子标签数量
   scoreboard players remove num glbs_common 1
   execute store result score num2 glbs_common run data get storage global_shop:common g_itemData.tag.display
   scoreboard players operation num glbs_common += num2 glbs_common

# 0 个
execute if score num glbs_common matches ..0 run return 0

# 换行
function global_shop:logic/item_data/to_string/add_seperator

data modify storage global_shop:common g_text append value {"translate":"item.nbt_tags","color":"dark_gray","with":[{"score":{"objective":"glbs_common","name":"num"},"color":"dark_gray"}]}