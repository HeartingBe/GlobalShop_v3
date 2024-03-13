# @executor Player

# 无收入
scoreboard players add @s glbs_income 0
execute if score @s glbs_income matches 0 run return run tellraw @s ["\u00a7c没有待领取的收入, 快向其他人卖东西吧~"]

# 把收入加到金钱上
scoreboard players operation addAmount glbs_common = @s glbs_income
scoreboard players set @s glbs_income 0
execute store result score temp glbs_common run function global_shop:adapters/money_scoreboard_adapter/add_money

tellraw @s ["\u00a7a成功领取 ",{"score":{"objective":"glbs_common","name":"addAmount"}}," \u00a7a金钱的收入, 现在你拥有 ",{"score":{"objective":"glbs_common","name":"temp"}},"\u00a7a 金钱"]