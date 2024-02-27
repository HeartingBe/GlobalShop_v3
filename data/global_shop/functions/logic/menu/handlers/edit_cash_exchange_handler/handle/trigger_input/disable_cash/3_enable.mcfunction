#启用
data remove storage global_shop:storage g_cashInfo[3].disable
data modify entity @e[distance=..5,type=item_display,scores={glbs_order=16},limit=1] item set from storage global_shop:storage g_cashInfo[3].item