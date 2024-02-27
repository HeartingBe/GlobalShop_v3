scoreboard players enable @s glbs_inputter_1

tellraw @s "" 
tellraw @s {"text":"点击下方按钮进行设置，将自动补充的文本中的\"?\"更改为你想设置的数值","color": "green"}
tellraw @s {"text":"[设置]","color":"yellow","bold": true,"clickEvent": {"action": "suggest_command","value": "/trigger glbs_inputter_1 set ?"}}