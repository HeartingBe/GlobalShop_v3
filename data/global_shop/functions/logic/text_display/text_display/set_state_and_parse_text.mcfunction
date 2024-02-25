#> global_shop:logic/text_display/text_display/set_state_and_parse_text
# @param g_itemData
# @executor TextDisplay

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
   # translation 平移变换，x 指向右侧，z 指向后方
# text_opacity 文本不透明度
#data merge entity @s {billboard:"center",alignment:"left",background:-283703273,see_through:false,line_width:144,brightness:{block:15,sky:15},transformation:{scale:[0.87f,0.87f,0.87f],translation:[1.2f,-1.0f,0.0f]}}
   # 尝试将文本展示实体生成到玩家处，然后用偏移将渲染位置改为玩家右前方
   data merge entity @s {Tags:["global_shop"],billboard:"center",alignment:"left",background:-283703273,see_through:false,line_width:144,brightness:{block:15,sky:15},transformation:{scale:[0.7f,0.7f,0.7f],translation:[1.4f,0.55f,-3.0f]}}

# 解析并写入文本
function global_shop:logic/text_display/parse_and_set_text