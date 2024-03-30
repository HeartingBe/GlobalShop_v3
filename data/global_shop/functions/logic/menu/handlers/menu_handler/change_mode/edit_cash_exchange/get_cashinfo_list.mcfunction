#> global_shop:logic/menu/handlers/menu_handler/change_mode/edit_cash_exchange/get_cashinfo_list
# 读取现金货币信息的列表

data modify storage global_shop:common g_itemsToDisplay set from storage global_shop:menu_preset_and_control edit_cash

execute unless data storage global_shop:storage g_cashInfo[0].disable run data modify storage global_shop:common g_itemsToDisplay[7] set from storage global_shop:storage g_cashInfo[0].item

execute unless data storage global_shop:storage g_cashInfo[1].disable run data modify storage global_shop:common g_itemsToDisplay[10] set from storage global_shop:storage g_cashInfo[1].item

execute unless data storage global_shop:storage g_cashInfo[2].disable run data modify storage global_shop:common g_itemsToDisplay[13] set from storage global_shop:storage g_cashInfo[2].item

execute unless data storage global_shop:storage g_cashInfo[3].disable run data modify storage global_shop:common g_itemsToDisplay[16] set from storage global_shop:storage g_cashInfo[3].item

execute unless data storage global_shop:storage g_cashInfo[4].disable run data modify storage global_shop:common g_itemsToDisplay[19] set from storage global_shop:storage g_cashInfo[4].item