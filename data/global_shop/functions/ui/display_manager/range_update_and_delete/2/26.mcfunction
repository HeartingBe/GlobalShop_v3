execute store result score temp1 glbs_common run data get entity @s item.tag.global_shop.id
execute store result score temp2 glbs_common run data get storage global_shop:common g_itemsToDisplay[26].tag.global_shop.id
execute if score temp1 glbs_common = temp2 glbs_common run return 0

data modify entity @s item.id set from storage global_shop:common g_itemsToDisplay[26].id
#data modify entity @s item.Count set from storage global_shop:common g_itemsToDisplay[26].Count
execute store result entity @s item.tag.global_shop.id int 1 run scoreboard players get temp2 glbs_common

function global_shop:ui/display_manager/on_item_update