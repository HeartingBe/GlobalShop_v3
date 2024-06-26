# @executor Player

# 输入负数
execute if score @s glbs_inputter_1 matches ..-1 run return run function global_shop:logic/menu/handlers/player_shop_handler/handle/check_player_input/1/input_negative

# 获取列表长度
execute store result score temp glbs_common run function global_shop:storage/store_manager/get_player_shop_list_size
   # 超过
   scoreboard players operation temp2 glbs_common = @s glbs_inputter_1
   execute if score temp2 glbs_common > temp glbs_common run return run function global_shop:logic/menu/handlers/player_shop_handler/handle/check_player_input/1/exceed_size
   # 处理 beginIndex
      # 移除 14 其实是移除 1 + 13，其中 1 是因为下标从 0 开始（玩家输入是从 1 开始，符合人的习惯）
      # 其中 13 是让定位的物品能显示在菜单的正中间（而不是显示在最左上角第一个物品，这会导致玩家还要移动到左上角才能看）
      scoreboard players operation beginIndex glbs_common = temp2 glbs_common
      scoreboard players remove beginIndex glbs_common 14
   # 判断是否已经在看这个物品
   scoreboard players operation inputOrder glbs_common = @s glbs_inputter_1
   execute on vehicle store result score isWatched glbs_common run function global_shop:logic/menu/handlers/player_shop_handler/handle/check_player_input/1/cmp_id
   execute if score isWatched glbs_common matches 1 run return run function global_shop:logic/menu/handlers/player_shop_handler/handle/check_player_input/1/already
   # 跳转
   execute on vehicle run scoreboard players operation @s glbs_begin_index = beginIndex glbs_common
   execute on vehicle run function global_shop:logic/menu/handlers/player_shop_handler/refresh_jump
   tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"player_shop.jump_order.success\"","color":"green"}]
   # 音效 跳转
   function global_shop:sound/jump
# 重置输入器状态
scoreboard players set @s glbs_inputter_1 0
scoreboard players set @s glbs_inputter_2 0
scoreboard players enable @s glbs_inputter_1
scoreboard players enable @s glbs_inputter_2