# @param playerMoney 玩家金钱 
# @executor Player

# 通知
tellraw @s ["\u00a7c你的钱太多, 无法领取收入。你的金钱为 ",{"score":{"objective":"glbs_common","name":"playerMoney"},"color":"yellow"},"\n\u00a7c全球商店为了避免整数溢出, 金钱不能超过 ",{"score":{"objective":"glbs_common","name":"INT32_MAX_HALF"},"color":"yellow"},"\n\u00a7c否则不能领取收入"]
# 音效
function global_shop:sound/fail