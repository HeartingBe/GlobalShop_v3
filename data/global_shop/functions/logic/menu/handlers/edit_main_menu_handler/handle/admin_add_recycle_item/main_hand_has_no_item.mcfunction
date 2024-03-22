tellraw @s ["\u00a7c向回收商店添加失败, 主手为空, 请重新添加"]

scoreboard players set @s glbs_inputter_1 0
scoreboard players enable @s glbs_inputter_1

function global_shop:sound/fail