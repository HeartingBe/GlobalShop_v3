# @executor Player

function global_shop:sound/success

tellraw @s [{"text":"光标移到这里来调整物品信息框大小","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger glbs_inputter_1 set ?"},"hoverEvent":{"action":"show_text","contents":[{"text":"执行:","color":"green"},"\n ",{"text":"/trigger glbs_inputter_1 set ?","color":"gray"},"\n\n",{"text":"左键点击来将命令填入聊天栏","color":"green"},"\n",{"text":"请将 ? 替换为你希望的大小变化","color":"green"},"\n",{"text":"输入正数使物品信息框变大","color":"green"},"\n",{"text":"输入负数使物品信息框变小","color":"green"},"\n",{"text":"推荐的输入范围:","color":"green"},{"text":" [-10, 10]:","color":"green"},"\n",{"text":"你可以多次调整直到合适","color":"green"}]}}]

execute on vehicle run scoreboard players operation @s glbs_last_target = @s glbs_last_view_id

scoreboard players enable @s glbs_inputter_1