# @brief 存储玩家背包第一格的物品。当玩家背包第一格没有物品时，用石头代替。必须和 global_shop:logic/player/restore_inventory0_from_storage 搭配使用
# @executor Player

data remove storage global_shop:common temp
data modify storage global_shop:common temp.inventory set from entity @s Inventory[{Slot:9b}]
execute unless data storage global_shop:common temp.inventory run item replace entity @s inventory.0 with minecraft:stone