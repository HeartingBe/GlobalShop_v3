#> global_shop:logic/menu/handlers/player_cash_exchange_handler/handle/player_left_click/deposit
# @executor player

# 判断玩家的钱是否太多
execute store result score playerMoney glbs_common run function global_shop:logic/player/get_money
execute if score playerMoney glbs_common > INT32_MAX_HALF glbs_common run return run function global_shop:logic/menu/handlers/player_cash_exchange_handler/handle/player_left_click/deposit/too_much_money

# 获取主手的货币
data modify storage global_shop:common g_itemData set from entity @s SelectedItem
execute unless data storage global_shop:common g_itemData.tag.global_shop.price run return run function global_shop:logic/menu/handlers/player_cash_exchange_handler/handle/player_left_click/deposit/no_cash_on_hand
# 计算货币总价值
execute store result score price glbs_common run data get storage global_shop:common g_itemData.tag.global_shop.price
execute store result score count glbs_common run data get storage global_shop:common g_itemData.Count
scoreboard players operation price glbs_common *= count glbs_common

# 移除主手的物品
item replace entity @s weapon.mainhand with minecraft:air 1 

# 把钱存入玩家账户
scoreboard players operation addAmount glbs_common = price glbs_common
execute store result score playerMoney glbs_common run function global_shop:logic/player/add_money

# 输出玩家现在钱的数量
tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.cash.exchange.save_success","color":"aqua"}," ",{"score":{"name":"playerMoney","objective":"glbs_common"},"color":"yellow"}]
function global_shop:sound/success