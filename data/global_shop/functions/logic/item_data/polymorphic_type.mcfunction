#> global_shop:logic/item_data/polymorphic_type
# @brief 将 g_itemData 中的数据解析成文本写入 g_text，根据 type 调不同类型的物品数据类解析
# @executor TextDisplay

# @other 这里不要使用变量 temp

execute store result score temp2 glbs_common run data get storage global_shop:common g_itemData.tag.global_shop.type

# 调不同 ItemData 的 ToString()
   execute if score temp2 glbs_common matches 0..3 run return run function global_shop:logic/item_data/polymorphic_type/0_to_3

   execute if score temp2 glbs_common matches 4..6 run return run function global_shop:logic/item_data/polymorphic_type/4_to_6