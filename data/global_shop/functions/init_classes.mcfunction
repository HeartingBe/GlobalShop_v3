# 调用所有类的 Init 函数初始化

# 停止执行
function global_shop:logic/shop/stop

# 初始化
   # 有关整个数据包信息的初始化（记分板、记分板常量、队伍）
   function global_shop:logic/shop/init
   # 定时器初始化
   function global_shop:logic/scheduler/init
   # 有关 storage global_shop:menu_preset_and_control 的初始化（菜单、控件和设置选项）
   function global_shop:storage/menu_preset_and_control/init
   # 有关 storage global_shop:storage 的初始化（永久性存储的信息）
   function global_shop:storage/init

# 初始化语言翻译串
function global_shop:text/init

# 标记已初始化
scoreboard players set g_isInit glbs_common 1
# 标记未运行
scoreboard players set g_enable glbs_common 0

# 通知和音效
schedule function global_shop:init_classes/tip 1s