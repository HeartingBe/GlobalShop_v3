# log
#tellraw @a ["物品数据相同，数据：\ng_itemDataThisSlot >>> ",{"type":"nbt","storage":"global_shop:common","nbt":"g_itemDataThisSlot"},"\ng_itemDataToCmp >>> ",{"type":"nbt","storage":"global_shop:common","nbt":"g_itemDataToCmp"}]

data modify storage global_shop:common g_checkSlotResult append value 0
execute store result storage global_shop:common g_checkSlotResult[-1] int 1 run scoreboard players get thisSlot glbs_common
scoreboard players operation requiredCount glbs_common -= thisSlotCount glbs_common