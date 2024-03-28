scoreboard players operation uid glbs_common = @s glbs_uid

tellraw @s [{"text":"这个物品是你自己出售的, 已直接取回","color":"red"}]

function global_shop:sound/success