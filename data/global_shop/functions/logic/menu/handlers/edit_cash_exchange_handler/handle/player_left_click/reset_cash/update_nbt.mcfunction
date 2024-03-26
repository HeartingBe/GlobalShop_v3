# @brief 重置所有货币物品展示实体的外观等
# @executor ItemDisplayEntity

execute if score @s glbs_order matches 7 run return run data modify entity @s item set from storage global_shop:storage g_cashInfo[0].item
execute if score @s glbs_order matches 10 run return run data modify entity @s item set from storage global_shop:storage g_cashInfo[1].item
execute if score @s glbs_order matches 13 run return run data modify entity @s item set from storage global_shop:storage g_cashInfo[2].item
execute if score @s glbs_order matches 16 run return run data modify entity @s item set from storage global_shop:storage g_cashInfo[3].item
execute if score @s glbs_order matches 19 run data modify entity @s item set from storage global_shop:storage g_cashInfo[4].item