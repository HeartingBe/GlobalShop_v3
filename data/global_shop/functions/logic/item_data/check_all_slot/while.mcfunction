execute store result score thisSlot glbs_common run data get storage global_shop:common inventory[0].Slot

execute unless score thisSlot glbs_common matches 0..35 run return run function global_shop:logic/item_data/check_all_slot/continue

data modify storage global_shop:common g_itemDataThisSlot set from storage global_shop:common inventory[0]

execute store result score thisSlotCount glbs_common run data get storage global_shop:common g_itemDataThisSlot.Count

# log
#tellraw @a ["栏位 ",{"score":{"objective":"glbs_common","name":"thisSlot"}}," 有 ",{"score":{"objective":"glbs_common","name":"thisSlotCount"}}," 个物品"]

# 还原物品数据，去除 requiredCount 和 Slot
function global_shop:logic/item_data/check_all_slot/revert

# 判断物品相同
execute store result score isItemDataSame glbs_common run data modify storage global_shop:common g_itemDataThisSlot set from storage global_shop:common g_itemDataToCmp
# 失败（isItemDataSame 为 0）说明数据完全相同
execute if score isItemDataSame glbs_common matches 0 run function global_shop:logic/item_data/check_all_slot/append_slot

execute if score requiredCount glbs_common matches ..-1 run return 0

data remove storage global_shop:common inventory[0]
execute if data storage global_shop:common inventory[0] run function global_shop:logic/item_data/check_all_slot/while