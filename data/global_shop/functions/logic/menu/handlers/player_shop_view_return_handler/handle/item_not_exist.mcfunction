# @executor Menu

function global_shop:logic/menu/handlers/player_shop_view_return_handler/refresh

execute on passengers if entity @s[type=minecraft:player] run tellraw @s ["\u00a7c该退回物品记录不存在, 已刷新显示"]