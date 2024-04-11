# @executor Player

# 输入负数
execute if score @s glbs_inputter_2 matches ..-1 run return run function global_shop:logic/menu/handlers/player_shop_handler/handle/check_player_input/2/input_negative

# 判重、定位、跳转
   scoreboard players operation id glbs_common = @s glbs_inputter_2
   # 已经在浏览
   execute on vehicle if score @s glbs_last_view_id = id glbs_common on passengers if entity @s[type=minecraft:player] run return run function global_shop:logic/menu/handlers/player_shop_handler/handle/check_player_input/2/already
   # 获取 index
   execute store result score temp glbs_common run function global_shop:storage/store_manager/locate_index_in_player_shop_list_by_id
   # 不存在
   execute if score temp glbs_common matches -1 run return run function global_shop:logic/menu/handlers/player_shop_handler/handle/check_player_input/2/no_find
   # 处理 beginIndex
      # 由于是倒着显示的，即视觉效果上 beginIndex 是相对于表尾的
      # 但这里找出的下标 temp 却是相对于表头的，所以应该换算到表尾
      execute store result score temp1 glbs_common run data get storage global_shop:storage g_playerShopList
      scoreboard players remove temp1 glbs_common 1
      scoreboard players operation temp1 glbs_common -= temp glbs_common
      scoreboard players operation beginIndex glbs_common = temp1 glbs_common
      # 移除 13 是让定位的物品能显示在菜单的正中间（而不是显示在最左上角第一个物品，这会导致玩家还要移动到左上角才能看）
      scoreboard players remove beginIndex glbs_common 13
   # 跳转
   execute on vehicle run scoreboard players operation @s glbs_begin_index = beginIndex glbs_common
   execute on vehicle run function global_shop:logic/menu/handlers/player_shop_handler/refresh
   # 音效 跳转
   function global_shop:sound/jump

# 重置输入器状态
scoreboard players set @s glbs_inputter_1 0
scoreboard players set @s glbs_inputter_2 0
scoreboard players enable @s glbs_inputter_1
scoreboard players enable @s glbs_inputter_2