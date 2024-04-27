# 换行
function global_shop:logic/item_data/add_seperator

# 获取和换算时间
execute store result score expireTime glbs_common run data get storage global_shop:common g_itemData.tag.global_shop.expireTime
scoreboard players operation expireTime glbs_common -= g_time glbs_common

scoreboard players operation expireDay glbs_common = expireTime glbs_common
scoreboard players operation expireDay glbs_common /= SECONDS_PER_DAY glbs_common

scoreboard players operation expireTime glbs_common %= SECONDS_PER_DAY glbs_common
scoreboard players operation expireHour glbs_common = expireTime glbs_common
scoreboard players operation expireHour glbs_common /= SECONDS_PER_HOUR glbs_common

scoreboard players operation expireSecond glbs_common = expireTime glbs_common
scoreboard players operation expireSecond glbs_common %= SECONDS_PER_HOUR glbs_common
scoreboard players operation expireSecond glbs_common /= SECONDS_PER_MINUTE glbs_common

# 写入过期时间
data modify storage global_shop:common g_text append value {"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"item_frame.expire_time.1\"","color":"white","extra":[{"text":": ","color":"white"},{"score":{"objective":"glbs_common","name":"expireDay"},"color":"aqua"},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"item_frame.expire_time.2\"","color":"gray"},{"text":" "},{"score":{"objective":"glbs_common","name":"expireHour"},"color":"aqua"},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"item_frame.expire_time.3\"","color":"gray"},{"text":" "},{"score":{"objective":"glbs_common","name":"expireSecond"},"color":"aqua"},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"item_frame.expire_time.4\"","color":"gray"}]}