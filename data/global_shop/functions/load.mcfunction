# 加载数据包时调用

# 共用记分板，存储所有公共变量、常量等（本应放在 Shop#Init 中创建，但下面要用所以在这里创建）
scoreboard objectives add glbs_common dummy

# 保证相关记分板有分数
   # 完整执行检查
   scoreboard players add g_tickTag glbs_common 0
   # 执行开关
   scoreboard players add g_enable glbs_common 0
   # 版本
   scoreboard players add g_version glbs_common 0
   # 已初始化标记
   scoreboard players add g_isInit glbs_common 0

# 数据包版本检查和更新（本版本为 v1.0，编号 0）
# tag 版本号修改点
execute unless score g_version glbs_common matches 0 run return run function global_shop:logic/updater/handle

# 首次安装数据包，直接执行初始化函数
execute if score g_isInit glbs_common matches 0 run return run function global_shop:init_classes

# 执行到此处说明不是首次安装，而是玩家重复 /reload，
   # 重复执行 /reload 应提示管理员是否重新初始化
   execute unless score Debug.g_isEnable glbs_debug_const matches 1 if score g_isInit glbs_common matches 1 as @a if score @s glbs_permission = Permission::ADMIN glbs_common run tellraw @s ["\n","\u00a7dGlobalShop \u00a7a已经初始化了\n要重新初始化, 请",{"text":"点击此处","color":"yellow","underlined":true,"clickEvent":{"action":"run_command","value":"/function global_shop:init_classes"}}]
   # 数据包未运行时，提示管理员开启
   execute unless score g_enable glbs_common matches 1 as @a if score @s glbs_permission = Permission::ADMIN glbs_common run tellraw @s ["\u00a7c全球商店目前处于停止运行的状态, 可能的原因是:\n1. 没有完整执行一轮的所有命令, 数据包自停止\n2. 重装了不同版本的全球商店, 但又换回了正确的版本\n3. 手动关闭\n4. 新安装, 还未启动过\n请确保排查了以上所有的问题, 然后",{"text":"点击此处","color":"yellow","underlined":true,"clickEvent":{"action":"run_command","value":"/function global_shop:settings/try_boot"}},"\u00a7c来尝试启动运行全球商店"]