#> global_shop:logic/store_manager/get_player_name
#@output global_shop:temp output
#暂存一号位物品的NBT值
data remove storage global_shop:temp inventory
execute if data entity @s Inventory[{Slot:9b}] run data modify storage global_shop:temp inventory set from entity @s Inventory[{Slot:9b}]
#取代1号位物品
execute unless data entity @s Inventory[{Slot:9b}] run item replace entity @s inventory.0 with stone
item modify entity @s inventory.0 global_shop:get_playername
#获取名字的NBT值作为宏参数
function global_shop:logic/store_manager/get_player_name/macro with entity @s Inventory[{Slot:9b}].tag.display
#获得玩家名字global_shop:temp jtext
data modify storage global_shop:temp output set from storage global_shop:temp jtext.hoverEvent.contents.name
#恢复1号位物品
execute if data storage global_shop:temp inventory.tag run return run function global_shop:logic/store_manager/get_player_name/restore_itemname_with_tag with storage global_shop:temp inventory
execute if data storage global_shop:temp inventory run return run function global_shop:logic/store_manager/get_player_name/restore_itemname with storage global_shop:temp inventory
execute unless data storage global_shop:temp inventory run item replace entity @s inventory.0 with air
return 0