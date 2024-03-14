# @executor Player

# tag 玩家输入

# inputter_1 跳转指定 index
# 不需要判断玩家输入的 index 过大，因为下面的函数中会首先判断玩家输入的 index 是否大于玩家商店列表的长度，如果是就返回。玩家商店列表大小有理论限制（8 位玩家占满连接数不断上架物品，需要约 42 年才能达到 int32 的一半大，然而每位玩家也有限制上架的物品数，除非不断上架和取回来叠高 id 值，但需要 42 年的时间）
execute unless score @s glbs_inputter_1 matches 0 run return run function global_shop:logic/menu/handlers/player_shop_handler/handle/check_player_input/1

# inputter_2 定位指定 id 的物品
# 不需要判断玩家输入的 id 过大，第一个原因同上，第二个原因是 id 仅用于比较，并不会有乘算或者加算
execute unless score @s glbs_inputter_2 matches 0 run function global_shop:logic/menu/handlers/player_shop_handler/handle/check_player_input/2