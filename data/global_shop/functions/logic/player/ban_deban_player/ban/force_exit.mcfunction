execute on vehicle run function global_shop:logic/menu/kill

tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"admin_settings.ban_player.notify_banned_player\"","color":"red"}]

function global_shop:sound/fail