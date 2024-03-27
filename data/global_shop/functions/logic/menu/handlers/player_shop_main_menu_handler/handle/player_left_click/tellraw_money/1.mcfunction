# @executor Player

execute store result score moneyToTellraw glbs_common run function global_shop:logic/player/get_money
tellraw @s ["\u00a7a你的金钱为 ",{"score":{"objective":"glbs_common","name":"moneyToTellraw"},"color":"yellow"}]
function global_shop:sound/success