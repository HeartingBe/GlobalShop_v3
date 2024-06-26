data remove storage global_shop:storage g_adminSettingList

# 自定义金钱记分板
data modify storage global_shop:storage g_adminSettingList prepend value {id:"minecraft:gold_ingot",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"control.admin_settings.money_sc\"","color":"yellow"}]}}}
execute store result storage global_shop:storage g_adminSettingList[0].tag.global_shop.id int 1 run scoreboard players get SETTING_CUSTOM_MONEY_SCOREBOARD glbs_common
execute store result storage global_shop:storage g_adminSettingList[0].tag.global_shop.type int 1 run scoreboard players get ItemDataType::SETTING glbs_common

# 自定义语言
data modify storage global_shop:storage g_adminSettingList prepend value {id:"minecraft:oak_sign",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"control.admin_settings.lang\"","color":"yellow"}]}}}
execute store result storage global_shop:storage g_adminSettingList[0].tag.global_shop.id int 1 run scoreboard players get SETTING_CUSTOM_LANGUAGE glbs_common
execute store result storage global_shop:storage g_adminSettingList[0].tag.global_shop.type int 1 run scoreboard players get ItemDataType::SETTING glbs_common

# 查看玩家是否禁止使用商店
data modify storage global_shop:storage g_adminSettingList prepend value {id:"minecraft:structure_void",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"control.admin_settings.ban_player_state\"","color":"aqua"}]}}}
execute store result storage global_shop:storage g_adminSettingList[0].tag.global_shop.id int 1 run scoreboard players get SETTING_BAN_PLAYER_STATE glbs_common
execute store result storage global_shop:storage g_adminSettingList[0].tag.global_shop.type int 1 run scoreboard players get ItemDataType::SETTING glbs_common

# 禁止、允许玩家使用商店
data modify storage global_shop:storage g_adminSettingList prepend value {id:"minecraft:barrier",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"control.admin_settings.ban_player\"","color":"aqua"}]}}}
execute store result storage global_shop:storage g_adminSettingList[0].tag.global_shop.id int 1 run scoreboard players get SETTING_BAN_PLAYER glbs_common
execute store result storage global_shop:storage g_adminSettingList[0].tag.global_shop.type int 1 run scoreboard players get ItemDataType::SETTING glbs_common

# 重置所有玩家数据（玩家商店、出售商店、回收商店、购买记录、出售记录、退回物品）
data modify storage global_shop:storage g_adminSettingList prepend value {id:"minecraft:grindstone",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"control.admin_settings.reset_dynamic_data.1\"","color":"red"},{"storage":"global_shop:storage","nbt":"char.SEPERATOR","interpret":1},{"storage":"global_shop:storage","nbt":"char.SEPERATOR","interpret":1},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"control.admin_settings.reset_dynamic_data.2\"","color":"red"}]}}}
execute store result storage global_shop:storage g_adminSettingList[0].tag.global_shop.id int 1 run scoreboard players get SETTING_RESET_DYNAMIC_DATA glbs_common
execute store result storage global_shop:storage g_adminSettingList[0].tag.global_shop.type int 1 run scoreboard players get ItemDataType::SETTING glbs_common

# 开关彩蛋
data modify storage global_shop:storage g_adminSettingList prepend value {id:"minecraft:allay_spawn_egg",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"control.admin_settings.toggle_easter_egg.1\"","color":"yellow"},{"storage":"global_shop:storage","nbt":"char.SEPERATOR","interpret":1},{"storage":"global_shop:storage","nbt":"char.SEPERATOR","interpret":1},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"control.admin_settings.toggle_easter_egg.2\"","color":"aqua"},{"storage":"global_shop:storage","nbt":"char.SEPERATOR","interpret":1},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"control.admin_settings.toggle_easter_egg.3\"","color":"aqua"},{"storage":"global_shop:storage","nbt":"char.SEPERATOR","interpret":1},{"storage":"global_shop:storage","nbt":"char.SEPERATOR","interpret":1},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"control.admin_settings.toggle_easter_egg.4\"","color":"yellow"}]},Enchantments:[{id:"minecraft:unknown",lvl:1s}]}}
execute store result storage global_shop:storage g_adminSettingList[0].tag.global_shop.id int 1 run scoreboard players get SETTING_EASTER_EGG glbs_common
execute store result storage global_shop:storage g_adminSettingList[0].tag.global_shop.type int 1 run scoreboard players get ItemDataType::SETTING glbs_common