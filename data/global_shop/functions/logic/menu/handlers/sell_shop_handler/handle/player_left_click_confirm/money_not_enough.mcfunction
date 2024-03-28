# @executor Player

# 通知
execute on passengers if entity @s[type=minecraft:player] run tellraw @s [{"text":"你的钱不够, 不能购买该出售商店的物品","color":"red"}]

function global_shop:sound/fail