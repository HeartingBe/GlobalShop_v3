function global_shop:ui/display_manager/summon_single_item/summon/merge_template

data modify entity @s item merge from storage global_shop:common g_itemsToDisplay[4]

scoreboard players set @s glbs_order 4