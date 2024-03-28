#> global_shop:logic/menu/handlers/edit_main_menu_handler/handle/admin_input/not_click_control
# @executor Admin

scoreboard players set @s glbs_inputter_1 0
scoreboard players enable @s glbs_inputter_1

tellraw @s [{"text":"请先点击相应的按钮, 再进行输入","color":"red"}]
function global_shop:sound/fail