# @return 0 - 失败；1 - 成功

# 箱子矿车必须不携带 Tags（避免操作其它数据包的矿车）
execute if data entity @s Tags run return 0

data merge entity @s {CustomDisplayTile:true,DisplayOffset:5,DisplayState:{Name:"minecraft:light_blue_shulker_box"},CustomName:'"\\u00a7f>> \\u00a7bGlobal Shop"',CustomNameVisible:1b,Tags:["glbs_has_painted"]}

return 1