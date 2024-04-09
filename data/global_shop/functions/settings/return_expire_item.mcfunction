# @executor Admin

function global_shop:storage/store_manager/return_expire_item
tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},"\u00a7areturn expire item num: ",{"score":{"objective":"glbs_common","name":"temp2"},"color":"yellow"}]
execute at @s run function global_shop:sound/success