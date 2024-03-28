# @param reduce 物品价格

# 扣除买家的钱
function global_shop:logic/player/reduce_money

# 把物品给玩家
function global_shop:logic/player/obtain_item

tellraw @s [{"text":"成功购买出售商店的物品","color":"green"}]

function global_shop:sound/success