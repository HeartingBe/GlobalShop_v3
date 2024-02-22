#> global_shop:logic/menu/handlers/edit_view_sell_shop_handler/handle/item_not_exist
# @executor Menu

function global_shop:logic/menu/handlers/edit_view_sell_shop_handler/refresh

execute on passengers if entity @s[type=minecraft:player] run tellraw @s ["\u00a7c该出售商店物品不存在, 已刷新显示"]
