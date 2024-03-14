data remove storage global_shop:storage g_adminSettingList

# 自定义金钱记分板
data modify storage global_shop:storage g_adminSettingList prepend value {id:"minecraft:gold_ingot",Count:1b,tag:{global_shop:{text:[{"storage":"global_shop:storage","nbt":"TEXT_PREFIX_SIMPLE","interpret":1},{"text":"修改使用的金钱记分板","color":"yellow"}]}}}
execute store result storage global_shop:storage g_adminSettingList[0].tag.global_shop.id int 1 run scoreboard players get SETTING_MODIFY_MONEY_SCOREBOARD glbs_common
execute store result storage global_shop:storage g_adminSettingList[0].tag.global_shop.type int 1 run scoreboard players get ItemDataType::SETTING glbs_common