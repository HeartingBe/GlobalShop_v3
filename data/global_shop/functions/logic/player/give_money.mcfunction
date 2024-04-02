#> global_shop:logic/player/give_money
# @param g_itemData 物品的信息
# @executor player

# 在设置物品的时候，用这个标签选中玩家
tag @s add glbs_item_owner
# 生成并设置物品的nbt信息
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["glbs_just"]}
execute as @e[tag=glbs_just,limit=1,sort=nearest,distance=0..0.1] run function global_shop:logic/player/give_money/modify
tag @s remove glbs_item_owner