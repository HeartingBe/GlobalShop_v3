# 加载数据包时调用

title @a actionbar ["\u00a7dGlobalShop \u00a7eloaded"]

# 共用记分板，存储所有公共变量、常量等（本应放在 Shop#Init 中创建，但下面要用所以在这里创建）
scoreboard objectives add glbs_common dummy
# 类初始化操作，仅调用一次
execute if score g_isInit glbs_common matches 1 as @a if score @s glbs_permission = Permission::ADMIN glbs_common run tellraw @s [" \n\u00a7f\u25a0\u00a77\u25a0\u00a78\u25a0 ","\u00a7dGlobalShop \u00a7a已经初始化了\n     要重新初始化, 请",{"text":"点击此处","color":"yellow","underlined":true,"clickEvent":{"action":"run_command","value":"/function global_shop:settings/re_init"}}]
execute unless score g_isInit glbs_common matches 1 run function global_shop:init_classes

# Scheduler 类是定时器，按一定频率调用 Shop#Perform 驱动整个数据包工作，考虑每次都检查
function global_shop:logic/scheduler/timing

#定义
#define storage global_shop:common