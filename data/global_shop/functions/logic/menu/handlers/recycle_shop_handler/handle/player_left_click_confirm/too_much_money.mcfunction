# @param playerMoney 玩家金钱 
# @executor Menu

# 通知
execute on passengers if entity @s[type=minecraft:player] run tellraw @s [{"text":"你的钱太多, 无法回收物品。你的金钱为 ","color":"red"},{"score":{"objective":"glbs_common","name":"playerMoney"},"color":"yellow"},"\n",{"text":"全球商店为保证不发生整数溢出, 你的金钱不能超过 ","color":"red"},{"score":{"objective":"glbs_common","name":"INT32_MAX_HALF"},"color":"yellow"},"\n",{"text":"否则不能回收物品","color":"red"}]

function global_shop:sound/fail