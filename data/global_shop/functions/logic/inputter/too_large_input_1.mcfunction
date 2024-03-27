# @brief 玩家输入的数字 inputter_1 过大，提醒并重新 enable
# @executor Player

tellraw @s ["\u00a7c输入的数太大了","\n","\u00a7a你的输入为: ",{"score":{"objective":"glbs_inputter_1","name":"@s"},"color":"yellow"},"\n","\u00a7a允许输入的最大数为: ",{"score":{"objective":"glbs_common","name":"MAX_PLAYER_INPUT"},"color":"yellow"}]

scoreboard players set @s glbs_inputter_1 0
scoreboard players enable @s glbs_inputter_1

function global_shop:sound/fail