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

# 执行到此处说明不是首次安装，而是玩家重复 /reload
   # 重复执行 /reload 应提示管理员是否重新初始化
   execute if score g_isInit glbs_common matches 1 as @a if score @s glbs_permission = Permission::ADMIN glbs_common run function global_shop:load/ask_if_reinit
   # 数据包未运行时，提示管理员开启
   execute unless score g_enable glbs_common matches 1 as @a if score @s glbs_permission = Permission::ADMIN glbs_common run tellraw @s [{"text":"全球商店目前处于停止运行的状态, 可能的原因:","color":"red"},"\n",{"text":"1. ","color":"red"},{"text":"没有完整执行一轮的所有命令(数据可能已损坏)","color":"red"},"\n",{"text":"2. ","color":"red"},{"text":"重装了不同版本的全球商店, 但又换回了正确的版本","color":"red"},"\n",{"text":"3. ","color":"red"},{"text":"手动关闭","color":"red"},"\n",{"text":"4. ","color":"red"},{"text":"新安装, 还未启动过","color":"red"},"\n",{"text":"请排查以上所有的问题问题","color":"red"},"\n",{"text":"然后点击这里启动全球商店","color":"yellow","clickEvent":{"action":"run_command","value":"/function global_shop:settings/try_boot"}}]