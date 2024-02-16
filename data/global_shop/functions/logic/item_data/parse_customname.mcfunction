# 物品可能没有自定义名称
execute unless data storage global_shop:common g_itemData.tag.display.Name run return 0

# 添加新行
function global_shop:logic/item_data/to_string/add_new_line

# 物品名字写入新行
data modify storage global_shop:common g_text.value[-1].extra prepend string storage global_shop:common g_itemData.tag.display.Name 1 -1