execute store result score temp1 glbs_common run data get entity @s item.tag.global_shop.id
execute store result score temp2 glbs_common run data get storage global_shop:common g_itemsToDisplay[21].tag.global_shop.id
execute if score temp1 glbs_common = temp2 glbs_common run return 0

data remove entity @s item.tag
data modify entity @s item merge from storage global_shop:common g_itemsToDisplay[21]

function global_shop:ui/display_manager/on_item_update