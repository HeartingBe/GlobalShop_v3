# 调用所有类的 Init 函数初始化

tellraw @a [" \n\u00a7f\u25a0\u00a77\u25a0\u00a78\u25a0 \u00a7dGlobalShop \u00a7a成功初始化"]

# 有关整个数据包信息的初始化（记分板、记分板常量、队伍）
function global_shop:logic/shop/init

# 定时器初始化
function global_shop:logic/scheduler/init

# 有关 storage global_shop:menu_preset_and_control 的初始化（主菜单和控件）
function global_shop:storage/menu_preset_and_control/init

# 有关 storage global_shop:storage 的初始化（永久性存储的信息）
function global_shop:storage/init

scoreboard players set g_isInit glbs_common 1