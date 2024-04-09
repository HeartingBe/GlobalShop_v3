# @brief 管理员在管理员设置界面选择清除所有玩家数据，并点击确认进入本函数
# @executor Admin

execute store result score temp glbs_common run data modify storage global_shop:common admin_input set value "i want to clear dynamic data"

execute if score temp glbs_common matches 1 run return run function global_shop:settings_/reset_dynamic_data/fail

# 清除动态数据
tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"admin_settings.reset_dynamic_data.success\"","color":"yellow"}]
function global_shop:settings_/uninstall/confirm/clear_shop_storage