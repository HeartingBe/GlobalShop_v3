# @executor Player

# 无收入
scoreboard players add @s glbs_income 0
execute if score @s glbs_income matches 0 run function global_shop:sound/fail
execute if score @s glbs_income matches 0 run return run tellraw @s [{"text":"没有待领取的收入, 快向其他人卖东西吧~","color":"red"}]

# 钱太多
# 判断玩家的钱是否太多
execute store result score playerMoney glbs_common run function global_shop:logic/player/get_money
execute if score playerMoney glbs_common > INT32_MAX_HALF glbs_common run return run function global_shop:logic/menu/handlers/player_shop_main_menu_handler/handle/player_left_click/collect_income/too_much_money

# 把收入加到金钱上
scoreboard players operation addAmount glbs_common = @s glbs_income
scoreboard players set @s glbs_income 0
execute store result score temp glbs_common run function global_shop:adapters/money_scoreboard_adapter/add_money

tellraw @s [{"text":"成功领取收入:","color":"green"}," ",{"score":{"objective":"glbs_common","name":"addAmount"},"color":"yellow"},"\n",{"text":"现在你的金钱为:","color":"green"}," ",{"score":{"objective":"glbs_common","name":"temp"},"color":"yellow"}]
function global_shop:sound/success