# @executor Player

execute store result score moneyToTellraw glbs_common run function global_shop:logic/player/get_money
tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"player_shop_main.view_money\"","color":"green"}," ",{"score":{"objective":"glbs_common","name":"moneyToTellraw"},"color":"yellow"}]
function global_shop:sound/success