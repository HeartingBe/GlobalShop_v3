# @brief 玩家从 storage global_shop:common temp.inventory 中恢复物品到物品栏第一格
# @executor Player

execute unless data storage global_shop:common temp.inventory run return run item replace entity @s inventory.0 with air

execute unless data storage global_shop:common temp.inventory.tag run data modify storage global_shop:common temp.inventory.tag set value ""
function global_shop:logic/player/restore_inventory0_from_storage/macro_item_replace with storage global_shop:common temp.inventory