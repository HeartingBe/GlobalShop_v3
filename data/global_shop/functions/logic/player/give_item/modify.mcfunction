#> global_shop:logic/player/give_item/modify
# 设置物品的nbt数据
data modify entity @s Item set from storage global_shop:common g_itemData
# 设置物品的捡起者，即give_item的执行者
data modify entity @s Owner set from entity @p[tag=glbs_item_owner] UUID