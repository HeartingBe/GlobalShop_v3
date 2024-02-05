# @brief 根据传入 id 获取控件信息
# @param g_itemData 出参

data remove storage global_shop:common g_itemData

# TODO 返回对应 id 的控件信息
   # 暂时返回空复合标签才能高亮
   data modify storage global_shop:common g_itemData set value {}