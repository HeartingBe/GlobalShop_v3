# 加载数据包时调用

title @a actionbar ["\u00a7eGlobal Shop loaded successfully"]

# 共用记分板，存储所有公共变量、常量等（本应放在 Shop#Init 中创建，但下面要用所以在这里创建）
scoreboard objectives add glbs_common dummy
# 类初始化操作，仅调用一次
execute unless score g_isInit glbs_common matches 1 run function global_shop:init_classes
scoreboard players set g_isInit glbs_common 1

# Scheduler 类是定时器，按一定频率调用 Shop#Perform 驱动整个数据包工作，考虑每次都检查
function global_shop:logic/scheduler/timing