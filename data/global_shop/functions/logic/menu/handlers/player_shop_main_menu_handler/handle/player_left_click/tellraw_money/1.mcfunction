# @executor Player

execute store result score moneyToTellraw glbs_common run function global_shop:logic/player/get_money
tellraw @s ["\u00a7e你的金钱: ",{"score":{"objective":"glbs_common","name":"moneyToTellraw"}}]
function global_shop:sound/success