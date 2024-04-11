# 不完整执行，阻止 load
execute if score g_tickTag glbs_common matches 1 run return run execute as @a if score @s glbs_permission = Permission::ADMIN glbs_common at @s run function global_shop:load/no_fully_execute

function global_shop:init_classes