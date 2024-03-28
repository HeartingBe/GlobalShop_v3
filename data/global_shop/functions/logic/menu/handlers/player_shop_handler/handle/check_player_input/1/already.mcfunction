# @executor Player

tellraw @s [{"text":"你已经在看这个序号的物品, 无需跳转","color":"red"}]

function global_shop:sound/fail

# 重置输入器状态
scoreboard players set @s glbs_inputter_1 0
scoreboard players set @s glbs_inputter_2 0
scoreboard players enable @s glbs_inputter_1
scoreboard players enable @s glbs_inputter_2