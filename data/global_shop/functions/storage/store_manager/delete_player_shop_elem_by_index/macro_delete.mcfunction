# @macro {index: int, uid: int, id: int}
# @executor Menu

# log
#execute on passengers if entity @s[type=minecraft:player] run tellraw @s ["delete_player_shop_elem_by_index()"]

# 从玩家商店总表中删除
$data remove storage global_shop:storage g_playerShopList[$(index)]

# 从玩家正在出售的物品列表中删除
$data remove storage global_shop:storage g_playerSellingListMap.$(uid)[{tag:{global_shop:{id:$(id)}}}]