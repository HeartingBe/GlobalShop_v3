function global_shop:ui/display_manager/summon_single_item/summon/merge_template

data modify entity @s item merge from storage global_shop:common g_itemsToDisplay[12]

scoreboard players set @s glbs_order 12

function global_shop:logic/item_display_entity/display_count