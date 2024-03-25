# @executor Admin

tellraw @s [{"text":"鼠标移到此处来输入自定义语言名称","color":"yellow","clickEvent":{"action":"suggest_command","value":"/data modify storage global_shop:common admin_input set value \"?\""},"hoverEvent":{"action":"show_text","contents":["\u00a7a执行：\u00a77/data modify storage global_shop:common admin_input set value \"?\"\n\u00a7a左键点击来将命令填入聊天栏\n\n\u00a7e请将 ? 替换为新的自定义语言名称"]}}]
tellraw @s [{"text":"然后点击此处来验证修改(不点击则修改无效)","color":"yellow","clickEvent":{"action":"run_command","value":"/function global_shop:settings/try_modify_language"}}]

# 音效
function global_shop:sound/success