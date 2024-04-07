#> global_shop:logic/player/give_money/modify

# 获取物品 price
execute store result score price glbs_common run data get storage global_shop:common g_itemData.tag.global_shop.price
# 还原物品
function global_shop:logic/item_data/revert
# 重新写入金钱
execute store result storage global_shop:common g_itemData.tag.global_shop.price int 1 run scoreboard players get price glbs_common
# 物品 Name 无法进行原始 json 文本解析，借助文本展示实体解析
    # 在临时世界文本实体上解析物品 Name
    data modify entity 00000d3a-0000-0d3a-0000-17cc0000edfa text set value '{"storage":"global_shop:common","nbt":"g_itemData.tag.display.Name","interpret":true}'
    # 写回 g_itemData
    data modify storage global_shop:common g_itemData.tag.display.Name set from entity 00000d3a-0000-0d3a-0000-17cc0000edfa text
# 设置物品实体的nbt数据
data modify entity @s Item set from storage global_shop:common g_itemData
# 设置物品实体相关量，PickupDelay 设置为 0 可以立刻捡起
data merge entity @s {NoGravity:1b,PickupDelay:0}
# 设置物品的捡起者，即 Player
data modify entity @s Owner set from entity @p[tag=glbs_item_owner] UUID

tag @s remove glbs_just