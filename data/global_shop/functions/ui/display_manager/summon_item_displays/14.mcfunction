function global_shop:ui/display_manager/summon_item_displays/merge_template

data modify entity @s item.id set from storage global_shop:common g_itemsToDisplay[14].id
scoreboard players set @s glbs_order 14