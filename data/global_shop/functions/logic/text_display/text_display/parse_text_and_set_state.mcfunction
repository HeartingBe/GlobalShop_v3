#> global_shop:logic/text_display/text_display/parse_text_and_set_state
# @param g_text
# @executor TextDisplay

tag @s add global_shop

# 解析文本
function global_shop:logic/item_data/to_string

# 写入文本
data modify entity @s text set value '{"nbt":"g_text","storage":"global_shop:common","interpret":1}'

# 面朝玩家渲染固定轴 billboard
# 文本左对齐 alignment
# 背景颜色 background
# 穿过方块渲染 see_through
# 发光 Glowing（经测试，对文本展示实体没用）
# 发光边框颜色 glow_color_override（经测试，对文本展示实体没用）
# 文本宽度限制 line_width 超过时换行，默认 200
# brightness 亮度
   # block 渲染使用的方块光照等级，取值为 0-15。
   # sky 渲染使用的天空光照等级，取值为 0-15。
# transformation 变换
   # scale 以原点为中心缩放模型
   # translation 平移变换
data merge entity @s {billboard:"center",alignment:"left",background:-283703273,see_through:false,line_width:144,brightness:{block:15,sky:15},transformation:{scale:[0.87f,0.87f,0.87f],translation:[1.2f,-1.0f,0.0f]}}

# TODO 给展示实体添加内边距，可以使用两个展示实体或者在字符串的开头和末尾添加空格和空行实现