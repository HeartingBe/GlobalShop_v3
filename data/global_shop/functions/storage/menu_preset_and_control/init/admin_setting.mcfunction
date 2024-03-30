data remove storage global_shop:storage g_adminSettingList

# 自定义金钱记分板
data modify storage global_shop:storage g_adminSettingList prepend value {id:"minecraft:gold_ingot",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.admin_settings.money_sc","color":"yellow"}]}}}
execute store result storage global_shop:storage g_adminSettingList[0].tag.global_shop.id int 1 run scoreboard players get SETTING_MODIFY_MONEY_SCOREBOARD glbs_common
execute store result storage global_shop:storage g_adminSettingList[0].tag.global_shop.type int 1 run scoreboard players get ItemDataType::SETTING glbs_common

# 隔一列
data modify storage global_shop:storage g_adminSettingList prepend from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM
data modify storage global_shop:storage g_adminSettingList prepend from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM
data modify storage global_shop:storage g_adminSettingList prepend from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM
data modify storage global_shop:storage g_adminSettingList prepend from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM
data modify storage global_shop:storage g_adminSettingList prepend from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM

# 自定义语言
data modify storage global_shop:storage g_adminSettingList prepend value {id:"minecraft:oak_sign",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.admin_settings.lang","color":"yellow"}]}}}
execute store result storage global_shop:storage g_adminSettingList[0].tag.global_shop.id int 1 run scoreboard players get SETTING_MODIFY_LANGUAGE glbs_common
execute store result storage global_shop:storage g_adminSettingList[0].tag.global_shop.type int 1 run scoreboard players get ItemDataType::SETTING glbs_common

# 隔一列
data modify storage global_shop:storage g_adminSettingList prepend from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM
data modify storage global_shop:storage g_adminSettingList prepend from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM
data modify storage global_shop:storage g_adminSettingList prepend from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM
data modify storage global_shop:storage g_adminSettingList prepend from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM
data modify storage global_shop:storage g_adminSettingList prepend from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM