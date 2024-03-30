# 提示
tellraw @s ["\u00a7c管理员开始维护货币兑换，已强制返回至主菜单"]
# 音效 更换菜单
execute on passengers if entity @s[type=minecraft:player] run function global_shop:sound/change_menu