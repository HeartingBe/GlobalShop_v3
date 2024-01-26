scoreboard players operation temp2 glbs_common = @s glbs_begin_index
scoreboard players operation temp2 glbs_common += temp1 glbs_common
function global_shop:storage/store_manager/get_player_shop_list_elem_by_index_and_append

scoreboard players add temp1 glbs_common 1
execute if score temp1 glbs_common matches ..26 run function global_shop:storage/store_manager/get_player_shop_list_page/1 