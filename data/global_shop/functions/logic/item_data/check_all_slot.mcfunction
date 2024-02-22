#> global_shop:logic/item_data/check_all_slot
# @brief 统计玩家 4 排背包格子中，哪些格子有对应物品
# @param g_itemDataToCmp 对应物品
# @param requiredCount 需要的数量
# @param g_checkSlotResult 出参，一个列表，表示哪个栏位需要移除
#        [[0],[5]] 表示 Slot:0b 格子和 Slot:5b 格子的物品是目标物品
# @param remainingCount 出参，剩余数量
#        如果 remainingCount < 0 不足，代表缺的数量
#        如果 remainingCount >= 0 足够
# @executor Player

# @other 玩家背包栏位序号和对应关系如下：
   # 背包三排：
      # Slot:9b ~ Slot:35b
      # inventory.0 ~ inventory.26
   # 下方一排：
      # Slot:0b ~ Slot:8b
      # hotbar.0 ~ hotbar.8

scoreboard players set remainingCount glbs_common 0

data remove storage global_shop:common g_checkSlotResult

data modify storage global_shop:common inventory set from entity @s Inventory

# while
execute if data storage global_shop:common inventory[0] run function global_shop:logic/item_data/check_all_slot/while

scoreboard players operation remainingCount glbs_common -= requiredCount glbs_common