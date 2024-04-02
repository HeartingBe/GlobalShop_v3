#> global_shop:logic/menu/handlers/player_use_money_item_exchange_handler/handle/player_left_click/exchange_3
# @executor player

# 是否被禁用
execute if data storage global_shop:storage g_cashInfo[3].disable run return run function global_shop:logic/menu/handlers/player_use_money_item_exchange_handler/handle/player_left_click/exchange_n/cash_disabled

# 获取玩家余额和货币面值
execute store result score playerMoney glbs_common run function global_shop:logic/player/get_money
execute store result score cashPrice glbs_common run data get storage global_shop:storage g_cashInfo[3].item.tag.global_shop.price

# 如果没这么多钱
execute if score playerMoney glbs_common < cashPrice glbs_common run return run function global_shop:logic/menu/handlers/player_use_money_item_exchange_handler/handle/player_left_click/exchange_n/not_enough_money

# 扣钱
scoreboard players operation reduce glbs_common = cashPrice glbs_common
function global_shop:logic/player/reduce_money

# 获取现在钱的数量，给后面通知用
scoreboard players operation playerMoney glbs_common -= cashPrice glbs_common

# 写入货币面值信息
data modify storage global_shop:common g_itemData set from storage global_shop:storage g_cashInfo[3].item
    #如果没有Lore就新建Lore列表，然后追加信息
    execute unless data storage global_shop:common g_itemData.tag.display.Lore run data modify storage global_shop:common g_itemData.tag.display.Lore set value []
    data modify entity 00000d3a-0000-0d3a-0000-17cc0000edfa text set value '[{"text":"货币价值：","color":"gold","italic":false},{"nbt":"g_cashInfo[3].item.tag.global_shop.price","storage":"global_shop:storage","color":"aqua"}]'
    # TODO 分割线复制于global_shop:logic/item_data/add_diviver。若要把分割线修改为nbt引用，应当同时修改这两个地方
    data modify storage global_shop:common g_itemData.tag.display.Lore append value '{"text":"------------","color":"gray"}'
    data modify storage global_shop:common g_itemData.tag.display.Lore append from entity 00000d3a-0000-0d3a-0000-17cc0000edfa text
# 给物品
function global_shop:logic/player/give_money

# 通知
function global_shop:logic/menu/handlers/player_use_money_item_exchange_handler/handle/player_left_click/exchange_n/success