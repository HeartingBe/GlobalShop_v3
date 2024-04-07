# @param global_shop:common admin_input 要禁止/允许使用商店的玩家
# @macro {name: string}
# @executor Admin

$scoreboard players reset $(name) glbs_ban

tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"admin_settings.ban_player.deban\"","color":"green"},{"text":": ","color":"green"},{"type":"nbt","storage":"global_shop:common","nbt":"admin_input","color":"yellow"}]

function global_shop:sound/success