scoreboard players set @s glbs_inputter_1 0
scoreboard players enable @s glbs_inputter_1
tellraw @s [{"text":"货币面值必须为正数, 请重新输入","color":"red"}]
function global_shop:sound/fail