# @executor Player

# 通知
execute on passengers if entity @s[type=minecraft:player] run tellraw @s ["\u00a7c钱不够,不能购买该出售商店的物品"]

function global_shop:sound/fail