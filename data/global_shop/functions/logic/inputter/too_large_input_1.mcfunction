# @brief 玩家输入的数字 inputter_1 过大，提醒并重新 enable
# @executor Player

tellraw @s [{"text":"输入的数太大了","color":"red"},"\n",{"text":"你的输入为:","color":"green"}," ",{"score":{"objective":"glbs_inputter_1","name":"@s"},"color":"yellow"},"\n",{"text":"允许输入的最大数为:","color":"green"}," ",{"score":{"objective":"glbs_common","name":"MAX_PLAYER_INPUT"},"color":"yellow"}]

scoreboard players set @s glbs_inputter_1 0
scoreboard players enable @s glbs_inputter_1

function global_shop:sound/fail