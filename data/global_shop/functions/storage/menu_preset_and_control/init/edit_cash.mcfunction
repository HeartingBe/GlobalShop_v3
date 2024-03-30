#> global_shop:storage/menu_preset_and_control/init/edit_cash
# 
# 初始化编辑货币的菜单、默认货币

data modify storage global_shop:menu_preset_and_control DEFAULT_CASH_INFO set value [{item:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.cash_custom_name","interpret":true}'},global_shop:{price:1},Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}},{item:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.cash_custom_name","interpret":true}'},global_shop:{price:5},Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}},{item:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.cash_custom_name","interpret":true}'},global_shop:{price:10},Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}},{item:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.cash_custom_name","interpret":true}'},global_shop:{price:50},Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}},{item:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.cash_custom_name","interpret":true}'},global_shop:{price:100},Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}}]
execute store result storage global_shop:menu_preset_and_control DEFAULT_CASH_INFO[].item.tag.global_shop.id int 1 run scoreboard players get CONTROL_CASH_EXCHANGE glbs_common
execute store result storage global_shop:menu_preset_and_control DEFAULT_CASH_INFO[].item.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CASH glbs_common

data remove storage global_shop:menu_preset_and_control edit_cash

data modify storage global_shop:menu_preset_and_control edit_cash append from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM
data modify storage global_shop:menu_preset_and_control edit_cash append from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM
data modify storage global_shop:menu_preset_and_control edit_cash append from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM

data modify storage global_shop:menu_preset_and_control edit_cash append from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM
data modify storage global_shop:menu_preset_and_control edit_cash append from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM
data modify storage global_shop:menu_preset_and_control edit_cash append from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM

data modify storage global_shop:menu_preset_and_control edit_cash append from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM
data modify storage global_shop:menu_preset_and_control edit_cash append from storage global_shop:menu_preset_and_control CONTROL_DISABLED_CASH
data modify storage global_shop:menu_preset_and_control edit_cash append from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM

data modify storage global_shop:menu_preset_and_control edit_cash append from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM
data modify storage global_shop:menu_preset_and_control edit_cash append from storage global_shop:menu_preset_and_control CONTROL_DISABLED_CASH
data modify storage global_shop:menu_preset_and_control edit_cash append from storage global_shop:menu_preset_and_control CONTROL_EDIT_CASH_ITEM

data modify storage global_shop:menu_preset_and_control edit_cash append from storage global_shop:menu_preset_and_control CONTROL_RESET_CASH
data modify storage global_shop:menu_preset_and_control edit_cash append from storage global_shop:menu_preset_and_control CONTROL_DISABLED_CASH
data modify storage global_shop:menu_preset_and_control edit_cash append from storage global_shop:menu_preset_and_control CONTROL_EDIT_CASH_PRICE

data modify storage global_shop:menu_preset_and_control edit_cash append from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM
data modify storage global_shop:menu_preset_and_control edit_cash append from storage global_shop:menu_preset_and_control CONTROL_DISABLED_CASH
data modify storage global_shop:menu_preset_and_control edit_cash append from storage global_shop:menu_preset_and_control CONTROL_CASH_SWITCH_STATUS

data modify storage global_shop:menu_preset_and_control edit_cash append from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM
data modify storage global_shop:menu_preset_and_control edit_cash append from storage global_shop:menu_preset_and_control CONTROL_DISABLED_CASH
data modify storage global_shop:menu_preset_and_control edit_cash append from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM

data modify storage global_shop:menu_preset_and_control edit_cash append from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM
data modify storage global_shop:menu_preset_and_control edit_cash append from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM
data modify storage global_shop:menu_preset_and_control edit_cash append from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM

data modify storage global_shop:menu_preset_and_control edit_cash append from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM
data modify storage global_shop:menu_preset_and_control edit_cash append from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM
data modify storage global_shop:menu_preset_and_control edit_cash append from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM
