# @executor Player

scoreboard players set @s glbs_inputter_1 0
scoreboard players enable @s glbs_inputter

tellraw @s [{"text":"需要先点击选择某个选项才能进行后续操作, 你还没有选择","color":"red"}]

function global_shop:sound/fail