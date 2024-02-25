# @executor TextDisplay

# 清除 text 会有残留小黑点，所以采用修改文本和背景透明度为完全透明的方法
#data modify entity @s text set value '""'

data merge entity @s {text_opacity:4b,background:0b}