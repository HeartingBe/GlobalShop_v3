#警告数据包当前处于debug模式
execute if score g_isInit glbs_common matches 1 as @a if score @s glbs_permission = Permission::ADMIN glbs_common run tellraw @s {"text":"[Debug/Warn]","color":"yellow","extra":[{"text":"当前数据包处于Debug模式，可能导致额外性能消耗发生或意外行为。"},{"text":"点击此处关闭","bold":true,"clickEvent":{"action":"run_command", "value":"/function global_shop:debug/_switch"}}]}

#初始化全部数据
function global_shop:debug/init/data