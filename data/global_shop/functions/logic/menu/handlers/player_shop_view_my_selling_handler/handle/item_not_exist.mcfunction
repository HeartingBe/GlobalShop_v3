# @executor Menu

function global_shop:logic/menu/handlers/player_shop_view_my_selling_handler/refresh

# 音效 失败
execute on passengers if entity @s[type=minecraft:player] run function global_shop:sound/fail

execute on passengers if entity @s[type=minecraft:player] run tellraw @s [{"text":"该正在出售物品记录不存在, 已刷新显示","color":"red"}]