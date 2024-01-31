#> global_shop:logic/store_manager/get_player_name
#@output global_shop:temp output
#取代1号位物品
execute unless data entity Alumopper_ Inventory[{Slot:9b}] run item replace entity @s inventory.0 with stone
item modify entity @s inventory.0 global_shop:get_playername
#获取名字的NBT值作为宏参数
function global_shop:logic/store_manager/get_player_name/macro with entity @s Inventory[{Slot:9b}].tag.display
#获得玩家名字global_shop:temp jtext
data modify storage global_shop:temp output set from storage global_shop:temp jtext.hoverEvent.contents.name