# @executor Player

execute store result score moneyToTellraw glbs_common run function global_shop:logic/player/get_money
tellraw @s [{"text":"你的金钱: ","color":"green"},{"score":{"objective":"glbs_common","name":"moneyToTellraw"},"color":"yellow"}]
function global_shop:sound/success