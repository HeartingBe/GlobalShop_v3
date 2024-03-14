# @executor Player

tellraw @s [{"text":"鼠标移到此处来调整物品信息框前后位置","color":"yellow","clickEvent":{"action":"suggest_command","value":"/trigger glbs_inputter_1 set ?"},"hoverEvent":{"action":"show_text","contents":["\u00a7a执行：\u00a77/trigger glbs_inputter_1 set ?\n\u00a7a左键点击来将命令填入聊天栏\n\n\u00a7e请将 ? 替换为你希望的位置变化\n输入正数使物品信息框向前移动(离你更远)\n输入负数使物品信息框向后移动(离你更近)\n推荐输入位于 [-10, 10] 的数\n你可以多次输入直到调整到满意为止"]}}]

execute on vehicle run scoreboard players operation @s glbs_last_target = @s glbs_last_view_id

scoreboard players enable @s glbs_inputter_1