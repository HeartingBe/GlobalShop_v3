function global_shop:ui/display_manager/summon_single_item/summon/merge_template

data modify entity @s item.id set from storage global_shop:common g_itemsToDisplay[14].id
data modify entity @s item.tag.global_shop.id set from storage global_shop:common g_itemsToDisplay[14].tag.global_shop.id
scoreboard players set @s glbs_order 14