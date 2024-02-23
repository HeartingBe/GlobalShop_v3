# @brief 旋转模式玩家左键时，更新上一次左键的物品的 id
# @executor Menu

# @other 目前旋转模式左键再次点击来确认的功能并不依赖 glbs_last_target 记分板，
#        目前仅在玩家设置、管理员设置（这两个都是旋转模式）的界面，需要用 glbs_last_target 记录玩家
#           上一次看向的设置控件的 id，便于在玩家使用 trigger 输入的时候判断玩家是在进行哪个设置
#        建议在判断物品存在之后，再记录。

# 记录玩家左键的物品 id
scoreboard players operation @s glbs_last_target = @s glbs_last_view_id