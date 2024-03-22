# @param playerMoney 玩家金钱 
# @executor Menu

# 通知
execute on passengers if entity @s[type=minecraft:player] run tellraw @s ["\u00a7c钱太多, 无法回收。你的金钱有:",{"score":{"objective":"glbs_common","name":"playerMoney"},"color":"yellow"},"\u00a7c, 全球商店为保证不发生整数溢出, 你的金钱不能超过 ",{"score":{"objective":"glbs_common","name":"INT32_MAX_HALF"},"color":"white"},"\u00a7c, 否则不能回收物品"]

function global_shop:sound/fail