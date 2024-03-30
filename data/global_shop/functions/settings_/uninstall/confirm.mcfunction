# @brief 管理员在编辑模式主界面选择卸载功能，并点击确认进入本函数，验证管理员是否卸载
# @executor Admin

execute store result score temp glbs_common run data modify storage global_shop:common admin_input set value "i want to uninstall"

execute if score temp glbs_common matches 0 run return run function global_shop:settings_/uninstall/confirm/fail

# 抹除数据
function global_shop:settings_/uninstall/confirm/clear