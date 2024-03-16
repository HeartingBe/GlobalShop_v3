# 排除 Menu 自己
tag @s remove glbs_residual

# 排除所有骑着的实体
execute on passengers run tag @s remove glbs_residual

# 排除物品展示实体上面骑着的文本展示实体
execute on passengers on passengers run tag @s remove glbs_residual