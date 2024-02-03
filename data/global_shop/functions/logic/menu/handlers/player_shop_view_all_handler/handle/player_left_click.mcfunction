# @executor Menu

# 获取玩家看向的控件序号（就是 @s glbs_last_action_target）
scoreboard players operation temp glbs_common = @s glbs_last_action_target

   # 玩家点击菜单外的地方
   execute if score temp glbs_common matches -1 run return run function global_shop:logic/menu/handlers/menu_handler/handle/player_left_click/null

   # 玩家左键确认
   execute if score @s glbs_last_action = Action::LEFT_CLICK_CONFIRM glbs_common run return run function global_shop:logic/menu/handlers/player_shop_view_all_handler/handle/player_left_click_confirm

   # 玩家首次左键
      # log
      execute on passengers if entity @s[type=minecraft:player] run title @s actionbar ["首次左键 ",{"score":{"objective":"glbs_common","name":"temp"}}]
