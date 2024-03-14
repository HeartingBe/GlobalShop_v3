# 调用所有类的 Init 函数初始化

tellraw @a ["--------------------------------"]
tellraw @a ["\u00a7dGlobalShop \u00a7a正在初始化..."]

# 停止执行
function global_shop:logic/scheduler/stop

# 初始化
   # 有关整个数据包信息的初始化（记分板、记分板常量、队伍）
   function global_shop:logic/shop/init
   # 定时器初始化
   function global_shop:logic/scheduler/init
   # 有关 storage global_shop:menu_preset_and_control 的初始化（主菜单、控件和设置选项）
   function global_shop:storage/menu_preset_and_control/init
   # 有关 storage global_shop:storage 的初始化（永久性存储的信息）
   function global_shop:storage/init

# 标记已初始化
scoreboard players set g_isInit glbs_common 1
# 标记未运行
scoreboard players set g_enable glbs_common 0

tellraw @a ["\u00a7dGlobalShop \u00a7a成功初始化, \u00a7c请等待管理员启动运行"]
tellraw @a ["--------------------------------"]

# 引导管理员开启
execute as @a if score @s glbs_permission = Permission::ADMIN glbs_common run tellraw @s [" \n",{"storage":"global_shop:storage","nbt":"TEXT_PREFIX_SIMPLE","interpret":true},"\u00a7dGlobalShop \u00a7a成功初始化, 要启动运行, 请",{"text":"点击此处","color":"yellow","underlined":true,"clickEvent":{"action":"run_command","value":"/function global_shop:settings/try_boot"}}]