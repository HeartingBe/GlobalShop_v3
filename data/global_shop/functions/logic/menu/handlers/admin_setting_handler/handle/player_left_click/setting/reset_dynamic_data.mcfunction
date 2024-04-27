# @brief 引导管理员重置所有玩家数据（玩家商店、出售商店、回收商店、购买记录、出售记录、退回物品）
# @executor Admin

data remove storage global_shop:common admin_input

tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"admin_settings.reset_dynamic_data_tip.1\"","color":"green"},"\u00a7a:\n",{"text":"1. ","color":"green"},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"admin_settings.reset_dynamic_data_tip.2\"","color":"yellow","clickEvent":{"action":"suggest_command","value":"/data modify storage global_shop:common admin_input set value \"?\""},"underlined":true},"\n",{"text":"2. ","color":"green"},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"admin_settings.reset_dynamic_data_tip.3\"","color":"green"},{"text":" \"","color":"green"},{"text":"i want to clear dynamic data","color":"dark_red","bold":true},{"text":"\"","color":"green"},"\n",{"text":"3. ","color":"green"},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"admin_settings.reset_dynamic_data_tip.4\"","color":"green","clickEvent":{"action":"run_command","value":"/function global_shop:settings_/reset_dynamic_data"},"underlined":true},"\n",{"text":"4. ","color":"green"},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"admin_settings.reset_dynamic_data_tip.5\"","color":"green","clickEvent":{"action":"run_command","value":"/function global_shop:settings/try_boot"},"underlined":true}]

execute on vehicle run scoreboard players operation @s glbs_last_target = SETTING_RESET_DYNAMIC_DATA glbs_common

function global_shop:sound/success