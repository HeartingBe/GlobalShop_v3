#> global_shop:logic/menu/handlers/player_cash_exchange_handler/handle/player_left_click/exchange_1
# @executor player

# 是否被禁用
execute if data storage global_shop:storage g_cashInfo[1].disable run return run function global_shop:logic/menu/handlers/player_cash_exchange_handler/handle/player_left_click/exchange_n/cash_disabled

# 获取玩家余额和货币面值
execute store result score playerMoney glbs_common run function global_shop:logic/player/get_money
execute store result score cashPrice glbs_common run data get storage global_shop:storage g_cashInfo[1].item.tag.global_shop.price

# 如果没这么多钱
execute if score playerMoney glbs_common < cashPrice glbs_common run return run function global_shop:logic/menu/handlers/player_cash_exchange_handler/handle/player_left_click/exchange_n/not_enough_money

# 扣钱
scoreboard players operation reduce glbs_common = cashPrice glbs_common
execute store result score playerMoney glbs_common run function global_shop:logic/player/reduce_money

# 写入货币面值信息
data modify storage global_shop:common g_itemData set from storage global_shop:storage g_cashInfo[1].item
    #写入货币面值信息
    data modify storage global_shop:common g_itemData.tag.display.Lore append value '{"text":"------------","color":"gray"}'
    data modify entity 00000d3a-0000-0d3a-0000-17cc0000edfa text set value '[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"item_frame.cash_value\"","color":"aqua","italic":false},{"text":": ","color":"aqua","italic":false},{"nbt":"g_cashInfo[1].item.tag.global_shop.price","storage":"global_shop:storage","color":"yellow","italic":false}]'
    data modify storage global_shop:common g_itemData.tag.display.Lore append from entity 00000d3a-0000-0d3a-0000-17cc0000edfa text
# 给物品
function global_shop:logic/player/give_money

# 通知
function global_shop:logic/menu/handlers/player_cash_exchange_handler/handle/player_left_click/exchange_n/success