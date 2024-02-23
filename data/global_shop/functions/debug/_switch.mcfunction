execute if score Debug.g_isEnable glbs_debug_const matches 1 run tellraw @s {"text":"[Debug/Warn]Debug模式已禁用","color":"yellow"}
execute if score Debug.g_isEnable glbs_debug_const matches 0 run tellraw @s {"text":"[Debug/Warn]Debug模式已启用","color":"yellow"}
execute if score Debug.g_isEnable glbs_debug_const matches 0 run return run scoreboard players set Debug.g_isEnable glbs_debug_const 1
scoreboard players set Debug.g_isEnable glbs_debug_const 0