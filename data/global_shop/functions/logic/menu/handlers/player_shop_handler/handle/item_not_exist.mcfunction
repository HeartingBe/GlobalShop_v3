# @executor Menu

function global_shop:logic/menu/handlers/player_shop_handler/refresh

execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/player_shop_handler/handle/item_not_exist/tip