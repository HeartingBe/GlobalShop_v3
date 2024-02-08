# @macro {uid: int}

# 轴对称变换后的 beginIndex_ 即为 temp1
scoreboard players operation temp2 glbs_common = temp1 glbs_common
scoreboard players operation temp2 glbs_common -= i glbs_common
# 宏参数在下面函数中被使用, 继续传入
function global_shop:storage/store_manager/get_player_shop_my_bought_list_elem_by_index_and_append with storage global_shop:common temp

scoreboard players add i glbs_common 1
execute if score i glbs_common matches ..26 run function global_shop:storage/store_manager/get_player_shop_my_bought_list_page/1