# 取消分配 uid
scoreboard players reset @s glbs_uid
scoreboard players remove g_nextUid glbs_common 1

tellraw @a [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},{"text":"[ERROR] Failed to parse player name when player registers for Global Shop.","color":"red"}]
function global_shop:sound/fail

return 1