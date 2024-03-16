#> global_shop:logic/menu/handlers/edit_view_recycle_shop_handler/handle/item_not_exist
# @executor Menu

function global_shop:logic/menu/handlers/edit_view_recycle_shop_handler/refresh

# 音效 失败
execute on passengers if entity @s[type=minecraft:player] run function global_shop:sound/fail

execute on passengers if entity @s[type=minecraft:player] run tellraw @s ["\u00a7c该回收物品不存在, 已刷新显示"]