# @executor Menu

# 提示主菜单不可返回（shift 脱离 Menu 才能退出）
execute on passengers if entity @s[type=minecraft:player] run tellraw @s [{"text":"你已经位于主菜单。要退出商店, 请脱离椅子","color":"red"}]

# 音效 失败
execute on passengers if entity @s[type=minecraft:player] run function global_shop:sound/fail

execute on passengers if entity @s[type=minecraft:interaction] run function global_shop:logic/interactor/clear_left_click_action

scoreboard players operation @s glbs_last_action = Action::RIGHT_CLICK glbs_common