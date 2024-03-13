#> global_shop:storage/init
#define storage global_shop:storage 储存
#define storage global_shop:args 函数的参数输入

# 金钱记分板名称
execute unless data storage global_shop:storage g_scoreboard run data modify storage global_shop:storage g_scoreboard set value "glbs_money"

# 金币 <···> 物品
   #默认
   execute unless data storage global_shop:storage g_cashInfo run data modify storage global_shop:storage g_cashInfo set value [{item:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"1"}'},global_shop:{price:1}}},price:1},{item:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"5"}'},global_shop:{price:5}}},price:1},{item:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"10"}'},global_shop:{price:10}}},price:10},{item:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"50"}'},global_shop:{price:50}}},price:50},{item:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"100"}'},global_shop:{price:100}}},price:100}]
   execute store result storage global_shop:storage g_cashInfo[].item.tag.global_shop.id int 1 run scoreboard players get CONTROL_CASH_EXCHANGE glbs_common
   execute store result storage global_shop:storage g_cashInfo[].item.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CASH glbs_common
   #空。空货币不具有价格，便于判断
   data modify storage global_shop:storage null_cash set value {item:{id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":"未定义此货币","color":"red"}'},global_shop:{price:-1}}}}

# region 消息前缀，两层引号
   #简化形式
      #解析形式
      #{"storage":"global_shop:storage","nbt":"TEXT_PREFIX_SIMPLE","interpret":1}
   data modify storage global_shop:storage TEXT_PREFIX_SIMPLE set value '"\\u00a7f\\u25a0\\u00a77\\u25a0\\u00a78\\u25a0 "'
   #标准形式，用于直接写进 nbt 列表
   data modify storage global_shop:storage TEXT_PREFIX set value {"text":"","extra":[{"text":"■","color":"white"},{"text":"■","color":"gray"},{"text":"■ ","color":"dark_gray"}]}
   data modify storage global_shop:storage TEXT_PREFIX_INDENTATION set value {"text":"    ","color":"white"}
#endregion

# region char 记录某些常量字符
   data modify storage global_shop:storage char.SCOPE_RESOLUTION set value ":"
   data modify storage global_shop:storage char.BLANK set value ""
   #换行符
   data modify storage global_shop:storage char.LINE_BREAK set value '"\\n"'
   data modify storage global_shop:storage char.LINE_BREAK_WITH_PADDING set value '"  \\n  "'
   data modify storage global_shop:storage char.SEPERATOR set value {"storage":"global_shop:storage","nbt":"char.LINE_BREAK","interpret":1}
   data modify storage global_shop:storage char.SEPERATOR_WITH_PADDING set value {"storage":"global_shop:storage","nbt":"char.LINE_BREAK_WITH_PADDING","interpret":1}
#endregion

# region enchantment 记录附魔文本用的键值对
   data modify storage global_shop:storage enchantment.aqua_affinity set value "enchantment.minecraft.aqua_affinity"
   data modify storage global_shop:storage enchantment.bane_of_arthropods set value "enchantment.minecraft.bane_of_arthropods"
   data modify storage global_shop:storage enchantment.binding_curse set value "enchantment.minecraft.binding_curse"
   data modify storage global_shop:storage enchantment.blast_protection set value "enchantment.minecraft.blast_protection"
   data modify storage global_shop:storage enchantment.channeling set value "enchantment.minecraft.channeling"
   data modify storage global_shop:storage enchantment.depth_strider set value "enchantment.minecraft.depth_strider"
   data modify storage global_shop:storage enchantment.efficiency set value "enchantment.minecraft.efficiency"
   data modify storage global_shop:storage enchantment.feather_falling set value "enchantment.minecraft.feather_falling"
   data modify storage global_shop:storage enchantment.fire_aspect set value "enchantment.minecraft.fire_aspect"
   data modify storage global_shop:storage enchantment.fire_protection set value "enchantment.minecraft.fire_protection"
   data modify storage global_shop:storage enchantment.flame set value "enchantment.minecraft.flame"
   data modify storage global_shop:storage enchantment.fortune set value "enchantment.minecraft.fortune"
   data modify storage global_shop:storage enchantment.frost_walker set value "enchantment.minecraft.frost_walker"
   data modify storage global_shop:storage enchantment.impaling set value "enchantment.minecraft.impaling"
   data modify storage global_shop:storage enchantment.infinity set value "enchantment.minecraft.infinity"
   data modify storage global_shop:storage enchantment.knockback set value "enchantment.minecraft.knockback"
   data modify storage global_shop:storage enchantment.looting set value "enchantment.minecraft.looting"
   data modify storage global_shop:storage enchantment.loyalty set value "enchantment.minecraft.loyalty"
   data modify storage global_shop:storage enchantment.luck_of_the_sea set value "enchantment.minecraft.luck_of_the_sea"
   data modify storage global_shop:storage enchantment.lure set value "enchantment.minecraft.lure"
   data modify storage global_shop:storage enchantment.mending set value "enchantment.minecraft.mending"
   data modify storage global_shop:storage enchantment.multishot set value "enchantment.minecraft.multishot"
   data modify storage global_shop:storage enchantment.piercing set value "enchantment.minecraft.piercing"
   data modify storage global_shop:storage enchantment.power set value "enchantment.minecraft.power"
   data modify storage global_shop:storage enchantment.projectile_protection set value "enchantment.minecraft.projectile_protection"
   data modify storage global_shop:storage enchantment.protection set value "enchantment.minecraft.protection"
   data modify storage global_shop:storage enchantment.punch set value "enchantment.minecraft.punch"
   data modify storage global_shop:storage enchantment.quick_charge set value "enchantment.minecraft.quick_charge"
   data modify storage global_shop:storage enchantment.respiration set value "enchantment.minecraft.respiration"
   data modify storage global_shop:storage enchantment.riptide set value "enchantment.minecraft.riptide"
   data modify storage global_shop:storage enchantment.sharpness set value "enchantment.minecraft.sharpness"
   data modify storage global_shop:storage enchantment.silk_touch set value "enchantment.minecraft.silk_touch"
   data modify storage global_shop:storage enchantment.smite set value "enchantment.minecraft.smite"
   data modify storage global_shop:storage enchantment.soul_speed set value "enchantment.minecraft.soul_speed"
   data modify storage global_shop:storage enchantment.sweeping set value "enchantment.minecraft.sweeping"
   data modify storage global_shop:storage enchantment.swift_sneak set value "enchantment.minecraft.swift_sneak"
   data modify storage global_shop:storage enchantment.thorns set value "enchantment.minecraft.thorns"
   data modify storage global_shop:storage enchantment.unbreaking set value "enchantment.minecraft.unbreaking"
   data modify storage global_shop:storage enchantment.vanishing_curse set value "enchantment.minecraft.vanishing_curse"
   data modify storage global_shop:storage enchantment."minecraft:aqua_affinity" set value "enchantment.minecraft.aqua_affinity"
   data modify storage global_shop:storage enchantment."minecraft:bane_of_arthropods" set value "enchantment.minecraft.bane_of_arthropods"
   data modify storage global_shop:storage enchantment."minecraft:binding_curse" set value "enchantment.minecraft.binding_curse"
   data modify storage global_shop:storage enchantment."minecraft:blast_protection" set value "enchantment.minecraft.blast_protection"
   data modify storage global_shop:storage enchantment."minecraft:channeling" set value "enchantment.minecraft.channeling"
   data modify storage global_shop:storage enchantment."minecraft:depth_strider" set value "enchantment.minecraft.depth_strider"
   data modify storage global_shop:storage enchantment."minecraft:efficiency" set value "enchantment.minecraft.efficiency"
   data modify storage global_shop:storage enchantment."minecraft:feather_falling" set value "enchantment.minecraft.feather_falling"
   data modify storage global_shop:storage enchantment."minecraft:fire_aspect" set value "enchantment.minecraft.fire_aspect"
   data modify storage global_shop:storage enchantment."minecraft:fire_protection" set value "enchantment.minecraft.fire_protection"
   data modify storage global_shop:storage enchantment."minecraft:flame" set value "enchantment.minecraft.flame"
   data modify storage global_shop:storage enchantment."minecraft:fortune" set value "enchantment.minecraft.fortune"
   data modify storage global_shop:storage enchantment."minecraft:frost_walker" set value "enchantment.minecraft.frost_walker"
   data modify storage global_shop:storage enchantment."minecraft:impaling" set value "enchantment.minecraft.impaling"
   data modify storage global_shop:storage enchantment."minecraft:infinity" set value "enchantment.minecraft.infinity"
   data modify storage global_shop:storage enchantment."minecraft:knockback" set value "enchantment.minecraft.knockback"
   data modify storage global_shop:storage enchantment."minecraft:looting" set value "enchantment.minecraft.looting"
   data modify storage global_shop:storage enchantment."minecraft:loyalty" set value "enchantment.minecraft.loyalty"
   data modify storage global_shop:storage enchantment."minecraft:luck_of_the_sea" set value "enchantment.minecraft.luck_of_the_sea"
   data modify storage global_shop:storage enchantment."minecraft:lure" set value "enchantment.minecraft.lure"
   data modify storage global_shop:storage enchantment."minecraft:mending" set value "enchantment.minecraft.mending"
   data modify storage global_shop:storage enchantment."minecraft:multishot" set value "enchantment.minecraft.multishot"
   data modify storage global_shop:storage enchantment."minecraft:piercing" set value "enchantment.minecraft.piercing"
   data modify storage global_shop:storage enchantment."minecraft:power" set value "enchantment.minecraft.power"
   data modify storage global_shop:storage enchantment."minecraft:projectile_protection" set value "enchantment.minecraft.projectile_protection"
   data modify storage global_shop:storage enchantment."minecraft:protection" set value "enchantment.minecraft.protection"
   data modify storage global_shop:storage enchantment."minecraft:punch" set value "enchantment.minecraft.punch"
   data modify storage global_shop:storage enchantment."minecraft:quick_charge" set value "enchantment.minecraft.quick_charge"
   data modify storage global_shop:storage enchantment."minecraft:respiration" set value "enchantment.minecraft.respiration"
   data modify storage global_shop:storage enchantment."minecraft:riptide" set value "enchantment.minecraft.riptide"
   data modify storage global_shop:storage enchantment."minecraft:sharpness" set value "enchantment.minecraft.sharpness"
   data modify storage global_shop:storage enchantment."minecraft:silk_touch" set value "enchantment.minecraft.silk_touch"
   data modify storage global_shop:storage enchantment."minecraft:smite" set value "enchantment.minecraft.smite"
   data modify storage global_shop:storage enchantment."minecraft:soul_speed" set value "enchantment.minecraft.soul_speed"
   data modify storage global_shop:storage enchantment."minecraft:sweeping" set value "enchantment.minecraft.sweeping"
   data modify storage global_shop:storage enchantment."minecraft:swift_sneak" set value "enchantment.minecraft.swift_sneak"
   data modify storage global_shop:storage enchantment."minecraft:thorns" set value "enchantment.minecraft.thorns"
   data modify storage global_shop:storage enchantment."minecraft:unbreaking" set value "enchantment.minecraft.unbreaking"
   data modify storage global_shop:storage enchantment."minecraft:vanishing_curse" set value "enchantment.minecraft.vanishing_curse"
#endregion

# 诅咒附魔
   data modify storage global_shop:storage curse set value {"minecraft:binding_curse":0b,"minecraft:vanishing_curse":0b,"binding_curse":0b,"vanishing_curse":0b}
# 等级I附魔
   data modify storage global_shop:storage level1 set value {"aqua_affinity":0b,"channeling":0b,"binding_curse":0b,"vanishing_curse":0b,"flame":0b,"infinity":0b,"mending":0b,"multishot":0b,"silk_touch":0b,"minecraft:aqua_affinity":0b,"minecraft:channeling":0b,"minecraft:binding_curse":0b,"minecraft:vanishing_curse":0b,"minecraft:flame":0b,"minecraft:infinity":0b,"minecraft:mending":0b,"minecraft:multishot":0b,"minecraft:silk_touch":0b}