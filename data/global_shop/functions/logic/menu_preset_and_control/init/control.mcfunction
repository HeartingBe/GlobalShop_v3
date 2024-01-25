# @brief 初始化控件

# 空项
data modify storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM set value {id:"minecraft:black_stained_glass_pane",Count:1b}
execute store result storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM.tag.global_shop.id int 1 run scoreboard players get CONTROL_NULL_ITEM glbs_common

# 主菜单 - 手书
data modify storage global_shop:menu_preset_and_control CONTROL_DATAPACK_INFO set value {id:"minecraft:writable_book",Count:1b}
execute store result storage global_shop:menu_preset_and_control CONTROL_DATAPACK_INFO.tag.global_shop.id int 1 run scoreboard players get CONTROL_DATAPACK_INFO glbs_common

# 主菜单 - 进入玩家商店主界面
data modify storage global_shop:menu_preset_and_control CONTROL_ENTER_PLAYER_SHOP_MAIN set value {id:"minecraft:beacon",Count:1b}
execute store result storage global_shop:menu_preset_and_control CONTROL_ENTER_PLAYER_SHOP_MAIN.tag.global_shop.id int 1 run scoreboard players get CONTROL_ENTER_PLAYER_SHOP_MAIN glbs_common

# 主菜单 - 进入编辑模式
data modify storage global_shop:menu_preset_and_control CONTROL_ENTER_EDIT set value {id:"minecraft:player_head",tag:{SkullOwner:{Name:"Alumopper"}},Count:1b}
execute store result storage global_shop:menu_preset_and_control CONTROL_ENTER_EDIT.tag.global_shop.id int 1 run scoreboard players get CONTROL_ENTER_EDIT glbs_common

# 主菜单 - 浏览出售商店
data modify storage global_shop:menu_preset_and_control CONTROL_ENTER_SELL_SHOP set value {id:"minecraft:barrel",Count:1b}
execute store result storage global_shop:menu_preset_and_control CONTROL_ENTER_SELL_SHOP.tag.global_shop.id int 1 run scoreboard players get CONTROL_ENTER_SELL_SHOP glbs_common

# 主菜单 - 进入金钱物品兑换界面
data modify storage global_shop:menu_preset_and_control CONTROL_MONEY_ITEM_EXCHANGE set value {id:"minecraft:paper",Count:1b}
execute store result storage global_shop:menu_preset_and_control CONTROL_MONEY_ITEM_EXCHANGE.tag.global_shop.id int 1 run scoreboard players get CONTROL_MONEY_ITEM_EXCHANGE glbs_common

# 主菜单 - 浏览回收商店
data modify storage global_shop:menu_preset_and_control CONTROL_ENTER_RECYCLE_SHOP set value {id:"minecraft:composter",Count:1b}
execute store result storage global_shop:menu_preset_and_control CONTROL_ENTER_RECYCLE_SHOP.tag.global_shop.id int 1 run scoreboard players get CONTROL_ENTER_RECYCLE_SHOP glbs_common

# 玩家商店主菜单 - 出售物品
data modify storage global_shop:menu_preset_and_control CONTROL_SELL_ITEM set value {id:"minecraft:diamond",Count:1b}
execute store result storage global_shop:menu_preset_and_control CONTROL_SELL_ITEM.tag.global_shop.id int 1 run scoreboard players get CONTROL_SELL_ITEM glbs_common

# 玩家商店主菜单 - 浏览玩家物品
data modify storage global_shop:menu_preset_and_control CONTROL_VIEW_PLAYER_SHOP set value {id:"minecraft:ender_chest",Count:1b}
execute store result storage global_shop:menu_preset_and_control CONTROL_VIEW_PLAYER_SHOP.tag.global_shop.id int 1 run scoreboard players get CONTROL_VIEW_PLAYER_SHOP glbs_common

# 玩家商店主菜单 - 浏览正在出售的物品
data modify storage global_shop:menu_preset_and_control CONTROL_VIEW_MY_SELLING set value {id:"minecraft:chest",Count:1b}
execute store result storage global_shop:menu_preset_and_control CONTROL_VIEW_MY_SELLING.tag.global_shop.id int 1 run scoreboard players get CONTROL_VIEW_MY_SELLING glbs_common

# 玩家商店主菜单 - 查询余额
data modify storage global_shop:menu_preset_and_control CONTROL_VIEW_MONEY set value {id:"minecraft:gold_ingot",Count:1b}
execute store result storage global_shop:menu_preset_and_control CONTROL_VIEW_MONEY.tag.global_shop.id int 1 run scoreboard players get CONTROL_VIEW_MONEY glbs_common

# 玩家商店主菜单 - 浏览退回的物品
data modify storage global_shop:menu_preset_and_control CONTROL_VIEW_RETURN_ITEMS set value {id:"minecraft:composter",Count:1b}
execute store result storage global_shop:menu_preset_and_control CONTROL_VIEW_RETURN_ITEMS.tag.global_shop.id int 1 run scoreboard players get CONTROL_VIEW_RETURN_ITEMS glbs_common

# 玩家商店主菜单 - 浏览历史购买物品
data modify storage global_shop:menu_preset_and_control CONTROL_VIEW_MY_BOUGHT set value {id:"minecraft:ender_pearl",Count:1b}
execute store result storage global_shop:menu_preset_and_control CONTROL_VIEW_MY_BOUGHT.tag.global_shop.id int 1 run scoreboard players get CONTROL_VIEW_MY_BOUGHT glbs_common

# 玩家商店主菜单 - 浏览历史出售物品
data modify storage global_shop:menu_preset_and_control CONTROL_VIEW_MY_SOLD set value {id:"minecraft:ender_eye",Count:1b}
execute store result storage global_shop:menu_preset_and_control CONTROL_VIEW_MY_SOLD.tag.global_shop.id int 1 run scoreboard players get CONTROL_VIEW_MY_SOLD glbs_common