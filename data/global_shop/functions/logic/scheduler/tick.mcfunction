# 数据包卸载时，glbs_common 记分板被抹除，就不会往里调用
execute if score g_enable glbs_common matches 1 run function global_shop:logic/scheduler/1t