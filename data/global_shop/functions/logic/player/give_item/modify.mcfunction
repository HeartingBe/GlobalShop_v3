#> global_shop:logic/player/give_item/modify

# 还原物品
function global_shop:logic/item_data/revert
# 设置物品的nbt数据
data modify entity @s Item set from storage global_shop:common g_itemData
# 设置物品实体相关量，PickupDelay 设置为 0 可以立刻捡起
data merge entity @s {NoGravity:1b,PickupDelay:0}
# 设置物品的捡起者，即give_item的执行者
data modify entity @s Owner set from entity @p[tag=glbs_item_owner] UUID

tag @s remove glbs_just