# 轴对称变换后的 beginIndex_ 即为 temp1
scoreboard players operation temp2 glbs_common = temp1 glbs_common
scoreboard players operation temp2 glbs_common -= i glbs_common
function global_shop:storage/store_manager/get_cache_list_page/get_elem_and_append

scoreboard players add i glbs_common 1
execute if score i glbs_common matches ..26 run function global_shop:storage/store_manager/get_cache_list_page/1