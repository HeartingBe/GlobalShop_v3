# @param reduce 物品价格

# 扣除买家的钱
function global_shop:logic/player/reduce_money

# 把物品给玩家
function global_shop:logic/player/give_item

tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.sell_shop.buy.success\"","color":"green"}]

function global_shop:sound/success