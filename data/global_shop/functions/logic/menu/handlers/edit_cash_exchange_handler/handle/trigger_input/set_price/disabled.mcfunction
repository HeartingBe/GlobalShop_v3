scoreboard players set @s glbs_inputter_1 0
tellraw @s [{"text":"这个货币已被禁用, 请先启用再修改其面值","color":"red"}]
function global_shop:sound/fail