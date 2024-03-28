tellraw @s [{"text":"上架物品失败, 因为你的主手是空的","color":"red"},"\n",{"text":"请将要上架的物品拿在主手, 然后重新尝试","color":"red"}]

function global_shop:sound/fail

scoreboard players set @s glbs_inputter_1 0
scoreboard players enable @s glbs_inputter_1