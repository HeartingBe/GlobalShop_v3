# 清除左键信息
execute on passengers if entity @s[type=minecraft:interaction] run function global_shop:logic/interactor/clear_left_click_action

# 引导管理员卸载全球商店
execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/edit_main_menu_handler/handle/player_left_click/unistall/tip

# 清除上一次左键的物品的序号 order
scoreboard players set @s glbs_last_target -1