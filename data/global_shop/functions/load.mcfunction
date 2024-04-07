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
      # 首次加载数据包，把版本设置为当前包硬编码版本
      # tag 版本号修改点
      execute if score g_version glbs_common matches 0 run scoreboard players set g_version glbs_common 1
   # 已初始化标记
   scoreboard players add g_isInit glbs_common 0

# 数据包版本检查和更新（本版本为 v3.0，编号 1）
# tag 版本号修改点
execute unless score g_version glbs_common matches 1 run return run function global_shop:logic/updater/handle

# 首次加载数据包，直接执行初始化函数
execute if score g_isInit glbs_common matches 0 run return run function global_shop:init_classes

# 执行到此处说明不是首次加载，而是玩家重复 /reload
   # 重复执行 /reload 应提示管理员是否重新初始化
   execute if score g_isInit glbs_common matches 1 as @a if score @s glbs_permission = Permission::ADMIN glbs_common run function global_shop:load/ask_if_reinit
   # 数据包未运行时，提示管理员开启
   # g_lang.tip_stop
   execute unless score g_enable glbs_common matches 1 as @a if score @s glbs_permission = Permission::ADMIN glbs_common run tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"tip_stop.1\"","color":"red"},"\n",{"text":"1. ","color":"red"},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"tip_stop.2\"","color":"red"},"\n",{"text":"2. ","color":"red"},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"tip_stop.3\"","color":"red"},"\n",{"text":"3. ","color":"red"},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"tip_stop.4\"","color":"red"},"\n",{"text":"4. ","color":"red"},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"tip_stop.5\"","color":"red"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"tip_stop.6\"","color":"red"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"tip_stop.7\"","color":"yellow","clickEvent":{"action":"run_command","value":"/function global_shop:settings/try_boot"},"underlined":true}]