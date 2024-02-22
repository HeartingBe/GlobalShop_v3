# @brief 初始化控件
#define storage global_shop:menu_preset_and_control

# 空项
data modify storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM set value {id:"minecraft:black_stained_glass_pane",Count:1b}
execute store result storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM.tag.global_shop.id int 1 run scoreboard players get CONTROL_NULL_ITEM glbs_common
execute store result storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common

# region 主菜单
    #包信息
    data modify storage global_shop:menu_preset_and_control CONTROL_DATAPACK_INFO set value {id:"minecraft:writable_book",Count:1b,tag:{global_shop:{text:[{"storage":"global_shop:storage","nbt":"TEXT_PREFIX_SIMPLE","interpret":1},{"text":"Alumopper_","color":"yellow"},{"text":" x ","color":"white"},{"text":"Mini_Ye","color":"yellow"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_DATAPACK_INFO.tag.global_shop.id int 1 run scoreboard players get CONTROL_DATAPACK_INFO glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_DATAPACK_INFO.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common
    
    #进入玩家商店主界面
    data modify storage global_shop:menu_preset_and_control CONTROL_ENTER_PLAYER_SHOP_MAIN set value {id:"minecraft:beacon",Count:1b,tag:{global_shop:{text:[{"storage":"global_shop:storage","nbt":"TEXT_PREFIX_SIMPLE","interpret":1},{"text":"进入玩家商店主界面","color":"yellow"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_ENTER_PLAYER_SHOP_MAIN.tag.global_shop.id int 1 run scoreboard players get CONTROL_ENTER_PLAYER_SHOP_MAIN glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_ENTER_PLAYER_SHOP_MAIN.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common
    
    #进入编辑模式
    data modify storage global_shop:menu_preset_and_control CONTROL_ENTER_EDIT set value {id:"minecraft:player_head",tag:{SkullOwner:{Name:"Alumopper_"},global_shop:{text:[{"storage":"global_shop:storage","nbt":"TEXT_PREFIX_SIMPLE","interpret":1},{"text":"进入编辑模式","color":"red"}]}},Count:1b}
    execute store result storage global_shop:menu_preset_and_control CONTROL_ENTER_EDIT.tag.global_shop.id int 1 run scoreboard players get CONTROL_ENTER_EDIT glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_ENTER_EDIT.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common
    
    #浏览出售商店
    data modify storage global_shop:menu_preset_and_control CONTROL_ENTER_SELL_SHOP set value {id:"minecraft:barrel",Count:1b,tag:{global_shop:{text:[{"storage":"global_shop:storage","nbt":"TEXT_PREFIX_SIMPLE","interpret":1},{"text":"浏览出售商店","color":"yellow"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_ENTER_SELL_SHOP.tag.global_shop.id int 1 run scoreboard players get CONTROL_ENTER_SELL_SHOP glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_ENTER_SELL_SHOP.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common
    
    #进入金钱物品兑换界面
    data modify storage global_shop:menu_preset_and_control CONTROL_MONEY_ITEM_EXCHANGE set value {id:"minecraft:paper",Count:1b,tag:{global_shop:{text:[{"storage":"global_shop:storage","nbt":"TEXT_PREFIX_SIMPLE","interpret":1},{"text":"进行金钱物品互换","color":"yellow"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_MONEY_ITEM_EXCHANGE.tag.global_shop.id int 1 run scoreboard players get CONTROL_MONEY_ITEM_EXCHANGE glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_MONEY_ITEM_EXCHANGE.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common
    
    #浏览回收商店
    data modify storage global_shop:menu_preset_and_control CONTROL_ENTER_RECYCLE_SHOP set value {id:"minecraft:composter",Count:1b,tag:{global_shop:{text:[{"storage":"global_shop:storage","nbt":"TEXT_PREFIX_SIMPLE","interpret":1},{"text":"浏览回收商店","color":"yellow"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_ENTER_RECYCLE_SHOP.tag.global_shop.id int 1 run scoreboard players get CONTROL_ENTER_RECYCLE_SHOP glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_ENTER_RECYCLE_SHOP.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common
#endregion

# region 玩家商店主菜单
    #出售物品
    data modify storage global_shop:menu_preset_and_control CONTROL_SELL_ITEM set value {id:"minecraft:diamond",Count:1b,tag:{global_shop:{text:[{"storage":"global_shop:storage","nbt":"TEXT_PREFIX_SIMPLE","interpret":1},{"text":"出售物品","color":"aqua"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_SELL_ITEM.tag.global_shop.id int 1 run scoreboard players get CONTROL_SELL_ITEM glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_SELL_ITEM.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common

    #浏览玩家物品
    data modify storage global_shop:menu_preset_and_control CONTROL_VIEW_PLAYER_SHOP set value {id:"minecraft:ender_chest",Count:1b,tag:{global_shop:{text:[{"storage":"global_shop:storage","nbt":"TEXT_PREFIX_SIMPLE","interpret":1},{"text":"浏览玩家商店","color":"yellow"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_VIEW_PLAYER_SHOP.tag.global_shop.id int 1 run scoreboard players get CONTROL_VIEW_PLAYER_SHOP glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_VIEW_PLAYER_SHOP.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common

    #浏览正在出售的物品
    data modify storage global_shop:menu_preset_and_control CONTROL_VIEW_MY_SELLING set value {id:"minecraft:chest",Count:1b,tag:{global_shop:{text:[{"storage":"global_shop:storage","nbt":"TEXT_PREFIX_SIMPLE","interpret":1},{"text":"查看自己正在出售的物品","color":"yellow"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_VIEW_MY_SELLING.tag.global_shop.id int 1 run scoreboard players get CONTROL_VIEW_MY_SELLING glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_VIEW_MY_SELLING.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common

    #查询余额
    data modify storage global_shop:menu_preset_and_control CONTROL_VIEW_MONEY set value {id:"minecraft:gold_ingot",Count:1b,tag:{global_shop:{text:[{"storage":"global_shop:storage","nbt":"TEXT_PREFIX_SIMPLE","interpret":1},{"text":"查看自己的金钱: ","color":"white"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_VIEW_MONEY.tag.global_shop.id int 1 run scoreboard players get CONTROL_VIEW_MONEY glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_VIEW_MONEY.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common

    #浏览退回的物品
    data modify storage global_shop:menu_preset_and_control CONTROL_VIEW_RETURN_ITEMS set value {id:"minecraft:composter",Count:1b,tag:{global_shop:{text:[{"storage":"global_shop:storage","nbt":"TEXT_PREFIX_SIMPLE","interpret":1},{"text":"浏览退回的物品","color":"yellow"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_VIEW_RETURN_ITEMS.tag.global_shop.id int 1 run scoreboard players get CONTROL_VIEW_RETURN_ITEMS glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_VIEW_RETURN_ITEMS.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common

    #浏览历史购买物品
    data modify storage global_shop:menu_preset_and_control CONTROL_VIEW_MY_BOUGHT set value {id:"minecraft:ender_pearl",Count:1b,tag:{global_shop:{text:[{"storage":"global_shop:storage","nbt":"TEXT_PREFIX_SIMPLE","interpret":1},{"text":"浏览自己的物品购买记录","color":"yellow"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_VIEW_MY_BOUGHT.tag.global_shop.id int 1 run scoreboard players get CONTROL_VIEW_MY_BOUGHT glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_VIEW_MY_BOUGHT.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common

    #浏览历史出售物品
    data modify storage global_shop:menu_preset_and_control CONTROL_VIEW_MY_SOLD set value {id:"minecraft:ender_eye",Count:1b,tag:{global_shop:{text:[{"storage":"global_shop:storage","nbt":"TEXT_PREFIX_SIMPLE","interpret":1},{"text":"浏览自己的物品出售记录","color":"yellow"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_VIEW_MY_SOLD.tag.global_shop.id int 1 run scoreboard players get CONTROL_VIEW_MY_SOLD glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_VIEW_MY_SOLD.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common
#endregion

# region 编辑模式菜单

    #向出售商店添加物品
    data modify storage global_shop:menu_preset_and_control CONTROL_ADD_ITEM_TO_SELL_SHOP set value {id:"minecraft:barrel",Count:1b,tag:{global_shop:{text:[{"storage":"global_shop:storage","nbt":"TEXT_PREFIX_SIMPLE","interpret":1},{"text":"向出售商店添加物品","color":"yellow"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_ADD_ITEM_TO_SELL_SHOP.tag.global_shop.id int 1 run scoreboard players get CONTROL_ADD_ITEM_TO_SELL_SHOP glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_ADD_ITEM_TO_SELL_SHOP.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common

    #从出售商店中去除物品
    data modify storage global_shop:menu_preset_and_control CONTROL_REMOVE_ITEM_FROM_SELL_SHOP set value {id:"minecraft:barrel",Count:1b,tag:{global_shop:{text:[{"storage":"global_shop:storage","nbt":"TEXT_PREFIX_SIMPLE","interpret":1},{"text":"从出售商店中去除物品","color":"yellow"}]},Enchantments:[{id:"minecraft:protection",lvl:1s}]},HideFlags:1b}
    execute store result storage global_shop:menu_preset_and_control CONTROL_REMOVE_ITEM_FROM_SELL_SHOP.tag.global_shop.id int 1 run scoreboard players get CONTROL_REMOVE_ITEM_FROM_SELL_SHOP glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_REMOVE_ITEM_FROM_SELL_SHOP.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common

    #向回收商店添加物品
    data modify storage global_shop:menu_preset_and_control CONTROL_ADD_ITEM_TO_RECYCLE_SHOP set value {id:"minecraft:composter",Count:1b,tag:{global_shop:{text:[{"storage":"global_shop:storage","nbt":"TEXT_PREFIX_SIMPLE","interpret":1},{"text":"向回收商店添加物品","color":"yellow"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_ADD_ITEM_TO_RECYCLE_SHOP.tag.global_shop.id int 1 run scoreboard players get CONTROL_ADD_ITEM_TO_RECYCLE_SHOP glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_ADD_ITEM_TO_RECYCLE_SHOP.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common

    #从回收商店中去除物品
    data modify storage global_shop:menu_preset_and_control CONTROL_REMOVE_ITEM_FROM_RECYCLE_SHOP set value {id:"minecraft:composter",Count:1b,tag:{global_shop:{text:[{"storage":"global_shop:storage","nbt":"TEXT_PREFIX_SIMPLE","interpret":1},{"text":"从回收商店中去除物品","color":"yellow"}]},Enchantments:[{id:"minecraft:protection",lvl:1s}],HideFlags:1b}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_REMOVE_ITEM_FROM_RECYCLE_SHOP.tag.global_shop.id int 1 run scoreboard players get CONTROL_REMOVE_ITEM_FROM_RECYCLE_SHOP glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_REMOVE_ITEM_FROM_RECYCLE_SHOP.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common

    #开关金钱兑换功能
    data modify storage global_shop:menu_preset_and_control CONTROL_TOGGLE_MONEY_EXCHANGE set value {id:"minecraft:paper",Count:1b,tag:{global_shop:{text:[{"storage":"global_shop:storage","nbt":"TEXT_PREFIX_SIMPLE","interpret":1},{"text":"开关金钱兑换功能","color":"yellow"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_TOGGLE_MONEY_EXCHANGE.tag.global_shop.id int 1 run scoreboard players get CONTROL_TOGGLE_MONEY_EXCHANGE glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_TOGGLE_MONEY_EXCHANGE.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common

    #修改金钱兑换的物品和比率
    data modify storage global_shop:menu_preset_and_control CONTROL_CHANGE_EXCHANGE_RATE set value {id:"minecraft:paper",Count:1b,tag:{global_shop:{text:[{"storage":"global_shop:storage","nbt":"TEXT_PREFIX_SIMPLE","interpret":1},{"text":"修改金钱兑换的物品和比率","color":"yellow"}]},Enchantments:[{id:"minecraft:protection",lvl:1s}],HideFlags:1b}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_CHANGE_EXCHANGE_RATE.tag.global_shop.id int 1 run scoreboard players get CONTROL_CHANGE_EXCHANGE_RATE glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_CHANGE_EXCHANGE_RATE.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common

    #返回主菜单
    data modify storage global_shop:menu_preset_and_control CONTROL_RETURN_MAIN_MENU set value {id:"minecraft:structure_void",Count:1b,tag:{global_shop:{text:[{"storage":"global_shop:storage","nbt":"TEXT_PREFIX_SIMPLE","interpret":1},{"text":"返回主菜单","color":"red"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_RETURN_MAIN_MENU.tag.global_shop.id int 1 run scoreboard players get CONTROL_RETURN_MAIN_MENU glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_RETURN_MAIN_MENU.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common

#endregion