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
      # 移除 13 是让定位的物品能显示在菜单的正中间（而不是显示在最左上角第一个物品，这会导致玩家还要移动到左上角才能看）
      scoreboard players operation beginIndex glbs_common = temp glbs_common
      scoreboard players remove beginIndex glbs_common 13
   # 跳转
   tellraw @s ["\u00a7a已为你寻找到 id 为 ",{"score":{"objective":"glbs_common","name":"id"},"color":"yellow"}," \u00a7a的物品"]
   execute on vehicle run scoreboard players operation @s glbs_begin_index = beginIndex glbs_common
   execute on vehicle run function global_shop:logic/menu/handlers/player_shop_handler/refresh
   # 音效 跳转
   function global_shop:sound/jump

# 重置输入器状态
scoreboard players set @s glbs_inputter_1 0
scoreboard players set @s glbs_inputter_2 0
scoreboard players enable @s glbs_inputter_1
scoreboard players enable @s glbs_inputter_2