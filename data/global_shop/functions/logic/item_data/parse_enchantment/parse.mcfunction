# @brief 翻译 temp.enchantments[0]

# 翻译每一项附魔的思路：
# 附魔有 id 和 lvl，其中 id 又有 命名空间 和 附魔id
# 第一步：处理 id，切割出 命名空间 和 附魔id，拼接成翻译键
   # 首先在存储表中查询，如果已经存储了这个 id，直接结束
   # 否则，遍历 id，找出第一个冒号，冒号之前的部分是 命名空间，之后的部分是 附魔id
   # 如果没有冒号，或者冒号在第一个字符，那么命名空间会被存储为 minecraft
   # 如果仅有一个冒号，此种特殊情况已经提前存储在表中
   # 然后拼接翻译键 enchanment.<namespace>.<ench_id>
   # 如果拼接翻译键失败，说明 id 有特殊字符（单引号、双引号等），则将翻译键设置为该附魔 id（会导致无法解析，但能让玩家看到原本的 id 即可）
   # 如果拼接成功，说明这是一个以前从未解析过的翻译键，将其存表
# 第二步，将翻译键写入文本
# 第三步，处理诅咒附魔，将文本变为红色。
# 其它：冒号开头的诅咒附魔和等级 I 不显示等级的附魔也应该写死在初始的表中（这是因为，假设解析 ":mending"，会被拆分为 {namespace:"minecraft",id:"mending"}，存表时会存储：
   # ":mending" -> "enchanment.minecraft.mending"
   # "mending" -> "enchanment.minecraft.mending"
   # 它们都是经验修补的正确翻译文本，所以 ":mending" 也应该认为是等级 I 但不显示等级的附魔
   # 所有 诅咒附魔 和 等级I不显示等级的附魔 都应该额外存储一份以冒号开头的形式

#获取ID翻译文本
# 同时，global_shop:common enchIdString 存储附魔 id 的双层双引号形式
function global_shop:logic/item_data/parse_enchantment/get_translate_string

#添加到文本
   # 原始 json 文本中的翻译文本格式为：
   # {"type":"translatable","translate":"<翻译键>","fallback":"<translate无对应翻译文本时的回落>"}
data modify storage global_shop:common temp.jsontext.translate set from storage global_shop:common temp.translate_key
# 无对应翻译文本时，就会直接显示 translate 中的内容
#data modify storage global_shop:common temp.jsontext.fallback set from storage global_shop:common temp.enchantments[0].id
data modify storage global_shop:common temp.jsontext merge value {type:"translatable",color:"gray"}

#诅咒附魔着色
function global_shop:logic/item_data/parse_enchantment/macro/if_curse with storage global_shop:common enchIdString

#添加等级字符串
function global_shop:logic/item_data/parse_enchantment/append_level_string

# 将结果写入 g_text
   # 换行
   function global_shop:logic/item_data/add_seperator
   # 写入
   data modify storage global_shop:common g_text append from storage global_shop:common temp.jsontext
   data remove storage global_shop:common temp.jsontext