# @executor Player

tellraw @s ["\u00a7c请先点击对应选项, 然后再输入。请重新输入"]

# 音效
function global_shop:sound/fail

scoreboard players set @s glbs_inputter_1 0
scoreboard players enable @s glbs_inputter