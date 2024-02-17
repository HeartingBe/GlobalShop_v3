# @param g_text
# @executor TextDisplay

tag @s add global_shop

# 解析文本
function global_shop:logic/item_data/to_string

# 写入文本，需要添加单引号
function global_shop:logic/text_display/text_display/macro_set_text with storage global_shop:common g_text

# 面朝玩家渲染固定轴 billboard
# 文本左对齐 alignment
# 背景颜色 background
# 穿过方块渲染 see_through
# 发光 Glowing（经测试，对文本展示实体没用）
# 发光边框颜色 glow_color_override（经测试，对文本展示实体没用）
# brightness
   # block 渲染使用的方块光照等级，取值为 0-15。
   # sky 渲染使用的天空光照等级，取值为 0-15。
data merge entity @s {billboard:"center",alignment:"left",background:-1610578041,see_through:false,brightness:{block:15,sky:15}}