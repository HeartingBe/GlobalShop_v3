#> global_shop:logic/store_manager/get_player_name
# @executor Player
# @output global_shop:common temp.output

# 暂存和取代 1 号位物品的 NBT 值
function global_shop:logic/player/replace_inventory0
#解析玩家名
item modify entity @s inventory.0 global_shop:get_playername
#获取名字的NBT值作为宏参数
function global_shop:logic/store_manager/get_player_name/macro with entity @s Inventory[{Slot:9b}].tag.display
#获得玩家名字global_shop:common temp.jtext
data modify storage global_shop:common temp.output set from storage global_shop:common temp.jtext.hoverEvent.contents.name
# 恢复 1 号位物品
function global_shop:logic/player/restore_inventory0_from_storage