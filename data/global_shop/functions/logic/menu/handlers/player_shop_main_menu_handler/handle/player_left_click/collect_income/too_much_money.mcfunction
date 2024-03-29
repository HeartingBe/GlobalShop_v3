# @param playerMoney 玩家金钱 
# @executor Player

# 通知
tellraw @s [{"text":"你的钱太多, 无法领取收入。你的金钱为","color":"red"}," ",{"score":{"objective":"glbs_common","name":"playerMoney"},"color":"yellow"},"\n",{"text":"全球商店为了避免整数溢出, 金钱不能超过","color":"red"}," ",{"score":{"objective":"glbs_common","name":"INT32_MAX_HALF"},"color":"yellow"},"\n",{"text":"否则不能领取收入","color":"red"}]
# 音效
function global_shop:sound/fail