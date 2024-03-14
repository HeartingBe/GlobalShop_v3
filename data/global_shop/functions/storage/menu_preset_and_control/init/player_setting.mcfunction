data remove storage global_shop:storage g_playerSettingList

# 物品信息框大小
    # 调整物品信息框大小
    data modify storage global_shop:storage g_playerSettingList prepend value {id:"minecraft:item_frame",Count:1b,tag:{global_shop:{text:[{"storage":"global_shop:storage","nbt":"TEXT_PREFIX_SIMPLE","interpret":1},{"text":"调整物品信息框大小","color":"yellow"}]}}}
    execute store result storage global_shop:storage g_playerSettingList[0].tag.global_shop.id int 1 run scoreboard players get SETTING_MODIFY_ITEM_FRAME_SIZE glbs_common
    execute store result storage global_shop:storage g_playerSettingList[0].tag.global_shop.type int 1 run scoreboard players get ItemDataType::SETTING glbs_common
    # 恢复默认物品信息框大小
    data modify storage global_shop:storage g_playerSettingList prepend value {id:"minecraft:item_frame",Count:1b,tag:{global_shop:{text:[{"storage":"global_shop:storage","nbt":"TEXT_PREFIX_SIMPLE","interpret":1},{"text":"恢复默认物品信息框大小","color":"yellow"}]}}}
    execute store result storage global_shop:storage g_playerSettingList[0].tag.global_shop.id int 1 run scoreboard players get SETTING_MODIFY_ITEM_FRAME_SIZE_RST glbs_common
    execute store result storage global_shop:storage g_playerSettingList[0].tag.global_shop.type int 1 run scoreboard players get ItemDataType::SETTING glbs_common

# 隔一列
data modify storage global_shop:storage g_playerSettingList prepend from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM
data modify storage global_shop:storage g_playerSettingList prepend from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM
data modify storage global_shop:storage g_playerSettingList prepend from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM
data modify storage global_shop:storage g_playerSettingList prepend from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM

# 物品信息框位置
    # 调整物品信息框上下位置
    data modify storage global_shop:storage g_playerSettingList prepend value {id:"minecraft:glow_item_frame",Count:1b,tag:{global_shop:{text:[{"storage":"global_shop:storage","nbt":"TEXT_PREFIX_SIMPLE","interpret":1},{"text":"调整物品信息框上下位置","color":"yellow"}]}}}
    execute store result storage global_shop:storage g_playerSettingList[0].tag.global_shop.id int 1 run scoreboard players get SETTING_MODIFY_ITEM_FRAME_POSITION_V glbs_common
    execute store result storage global_shop:storage g_playerSettingList[0].tag.global_shop.type int 1 run scoreboard players get ItemDataType::SETTING glbs_common
    # 调整物品信息框左右位置
    data modify storage global_shop:storage g_playerSettingList prepend value {id:"minecraft:glow_item_frame",Count:1b,tag:{global_shop:{text:[{"storage":"global_shop:storage","nbt":"TEXT_PREFIX_SIMPLE","interpret":1},{"text":"调整物品信息框左右位置","color":"yellow"}]}}}
    execute store result storage global_shop:storage g_playerSettingList[0].tag.global_shop.id int 1 run scoreboard players get SETTING_MODIFY_ITEM_FRAME_POSITION_H glbs_common
    execute store result storage global_shop:storage g_playerSettingList[0].tag.global_shop.type int 1 run scoreboard players get ItemDataType::SETTING glbs_common
    # 调整物品信息框前后位置
    data modify storage global_shop:storage g_playerSettingList prepend value {id:"minecraft:glow_item_frame",Count:1b,tag:{global_shop:{text:[{"storage":"global_shop:storage","nbt":"TEXT_PREFIX_SIMPLE","interpret":1},{"text":"调整物品信息框前后位置","color":"yellow"}]}}}
    execute store result storage global_shop:storage g_playerSettingList[0].tag.global_shop.id int 1 run scoreboard players get SETTING_MODIFY_ITEM_FRAME_POSITION_D glbs_common
    execute store result storage global_shop:storage g_playerSettingList[0].tag.global_shop.type int 1 run scoreboard players get ItemDataType::SETTING glbs_common
    # 恢复默认物品信息框位置
    data modify storage global_shop:storage g_playerSettingList prepend value {id:"minecraft:glow_item_frame",Count:1b,tag:{global_shop:{text:[{"storage":"global_shop:storage","nbt":"TEXT_PREFIX_SIMPLE","interpret":1},{"text":"恢复默认物品信息框位置","color":"yellow"}]}}}
    execute store result storage global_shop:storage g_playerSettingList[0].tag.global_shop.id int 1 run scoreboard players get SETTING_MODIFY_ITEM_FRAME_POSITION_RST glbs_common
    execute store result storage global_shop:storage g_playerSettingList[0].tag.global_shop.type int 1 run scoreboard players get ItemDataType::SETTING glbs_common