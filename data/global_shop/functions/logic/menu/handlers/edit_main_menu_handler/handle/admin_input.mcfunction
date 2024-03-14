# @executor Admin

# 获取玩家上一次左键的物品序号
execute on vehicle run scoreboard players operation temp glbs_common = @s glbs_last_target

# 处理输入
   # 判断管理员向出售商店添加物品（4 是向出售商店添加物品控件的 order）
   execute if score temp glbs_common matches 4 run return run function global_shop:logic/menu/handlers/edit_main_menu_handler/handle/admin_add_sell_item
   # 判断管理员向回收商店添加物品（10 是向回收商店添加物品控件的 order）
   execute if score temp glbs_common matches 10 run return run function global_shop:logic/menu/handlers/edit_main_menu_handler/handle/admin_add_recycle_item

# 管理员没有先点击控件
function global_shop:logic/menu/handlers/edit_main_menu_handler/handle/admin_input/not_click_control