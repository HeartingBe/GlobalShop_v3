#启用
data remove storage global_shop:storage g_cashInfo[0].disable
data modify entity @e[distance=..5,type=item_display,scores={glbs_order=7},limit=1] item set from storage global_shop:storage g_cashInfo[0].item