scoreboard players enable @s glbs_inputter_2

tellraw @s "" 
tellraw @s {"text":"确认要禁用/启用此货币吗?","color": "red"}
tellraw @s {"text":"[确认]","color":"yellow","bold": true,"clickEvent": {"action": "run_command","value": "/trigger glbs_inputter_2 set 2"}}