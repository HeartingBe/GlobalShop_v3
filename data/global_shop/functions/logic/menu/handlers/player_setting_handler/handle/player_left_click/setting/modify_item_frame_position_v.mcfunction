# @executor Player

function global_shop:sound/success

tellraw @s [{"text":"光标移到这里来调整物品信息框上下位置","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger glbs_inputter_1 set ?"},"hoverEvent":{"action":"show_text","contents":["\u00a7a执行:\n \u00a77/trigger glbs_inputter_1 set ?\n\n\u00a7a左键点击来将命令填入聊天栏\n请将 ? 替换为你希望的位置变化\n输入正数使物品信息框向上移动\n输入负数使物品信息框向下移动\n推荐输入位于 [-10, 10] 的数\n你可以多次输入直到调整到满意为止"]}}]

execute on vehicle run scoreboard players operation @s glbs_last_target = @s glbs_last_view_id

scoreboard players enable @s glbs_inputter_1