# @executor Menu

function global_shop:logic/menu/handlers/sell_shop_handler/refresh

# 音效 失败
execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/sell_shop_handler/handle/item_not_exist/tip