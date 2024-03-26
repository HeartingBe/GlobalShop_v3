# @param temp Menu 记录的玩家看向的物品序号
# @executor Admin

execute on vehicle run scoreboard players operation temp2 glbs_common = @s glbs_last_target
execute if score temp2 glbs_common matches -1 run function global_shop:sound/fail
execute if score temp2 glbs_common matches -1 run return run tellraw @s {"text":"请左键选择货币后再修改面值","color":"red"}

# 提示管理员设置价格
scoreboard players enable @s glbs_inputter_1
function global_shop:sound/success
tellraw @s [{"text":"点击此处","color":"yellow","bold": true,"clickEvent":{"action":"suggest_command","value": "/trigger glbs_inputter_1 set ?"}},"\u00a7a来设置货币的面值, 请将 \u00a7c? \u00a7a更改为你想要的数值"]