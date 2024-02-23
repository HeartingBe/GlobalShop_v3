#> global_shop:debug/init/data
# 信息数据的初始化，包括记分板和nbt数据

execute as @a if score @s glbs_permission = Permission::ADMIN glbs_common run tellraw @s {"text":"[Debug/Warn]已重载全部数据","color":"yellow"}

# 有关整个数据包信息的初始化（记分板、记分板常量、队伍）
function global_shop:logic/shop/init

# 定时器初始化
function global_shop:logic/scheduler/init

# 有关 storage global_shop:menu_preset_and_control 的初始化（主菜单和控件）
function global_shop:storage/menu_preset_and_control/init

# 有关 storage global_shop:storage 的初始化（永久性存储的信息）
function global_shop:storage/init