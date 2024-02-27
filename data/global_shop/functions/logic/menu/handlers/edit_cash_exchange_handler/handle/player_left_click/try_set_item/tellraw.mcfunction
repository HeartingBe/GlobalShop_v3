scoreboard players enable @s glbs_inputter_2

tellraw @s "" 
tellraw @s {"text":"将要设置为货币物品的物品放置在主手，然后点击下方按钮进行设置","color": "green"}
tellraw @s {"text":"[确认]","color":"yellow","bold": true,"clickEvent": {"action": "run_command","value": "/trigger glbs_inputter_2 set 1"}}