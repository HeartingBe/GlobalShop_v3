# @brief 玩家输入的数字 inputter_1 过大，提醒并重新 enable
# @executor Player

# g_lang.inputter_1.too_large
tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.inputter_1.too_large.1\"","color":"red"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.inputter_1.too_large.2\"","color":"green"}," ",{"score":{"objective":"glbs_inputter_1","name":"@s"},"color":"yellow"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.inputter_1.too_large.3\"","color":"green"}," ",{"score":{"objective":"glbs_common","name":"MAX_PLAYER_INPUT"},"color":"yellow"}]

scoreboard players set @s glbs_inputter_1 0
scoreboard players enable @s glbs_inputter_1

function global_shop:sound/fail