# @brief 将 g_itemData 中的数据解析成文本写入 g_text，根据 type 调不同类型的物品数据类解析
# @executor ItemDisplayEntity

# @other 这里不要使用变量 temp

execute store result score temp2 glbs_common run data get storage global_shop:common g_itemData.tag.global_shop.type

# 暂时用分数，之后改成宏
   # 玩家商店的物品
   execute if score temp2 glbs_common = ItemDataType::PLAYER_SHOP glbs_common run function global_shop:logic/item_data/player_shop_item_data/to_string