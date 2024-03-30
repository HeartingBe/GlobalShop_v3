# @brief 初始化控件
#define storage global_shop:menu_preset_and_control

# 空项
data modify storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM set value {id:"minecraft:black_stained_glass_pane",Count:1b}
execute store result storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM.tag.global_shop.id int 1 run scoreboard players get CONTROL_NULL_ITEM glbs_common
execute store result storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common

# region 主菜单
    #包信息
    data modify storage global_shop:menu_preset_and_control CONTROL_DATAPACK_INFO set value {id:"minecraft:writable_book",Count:1b,tag:{global_shop:{text:[{"text":"Alumopper_","color":"yellow"},{"text":" x ","color":"white"},{"text":"Mini_Ye","color":"yellow"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_DATAPACK_INFO.tag.global_shop.id int 1 run scoreboard players get CONTROL_DATAPACK_INFO glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_DATAPACK_INFO.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common
    
    #进入玩家商店主界面
    data modify storage global_shop:menu_preset_and_control CONTROL_ENTER_PLAYER_SHOP_MAIN set value {id:"minecraft:beacon",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.enter_player_shop_main","color":"yellow"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_ENTER_PLAYER_SHOP_MAIN.tag.global_shop.id int 1 run scoreboard players get CONTROL_ENTER_PLAYER_SHOP_MAIN glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_ENTER_PLAYER_SHOP_MAIN.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common
    
    #进入编辑模式
    data modify storage global_shop:menu_preset_and_control CONTROL_ENTER_EDIT set value {id:"minecraft:player_head",tag:{SkullOwner:{Name:"Alumopper_"},global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.enter_edit","color":"red"}]}},Count:1b}
    execute store result storage global_shop:menu_preset_and_control CONTROL_ENTER_EDIT.tag.global_shop.id int 1 run scoreboard players get CONTROL_ENTER_EDIT glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_ENTER_EDIT.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common
    
    #浏览出售商店
    data modify storage global_shop:menu_preset_and_control CONTROL_ENTER_SELL_SHOP set value {id:"minecraft:barrel",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.enter_sell_shop","color":"yellow"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_ENTER_SELL_SHOP.tag.global_shop.id int 1 run scoreboard players get CONTROL_ENTER_SELL_SHOP glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_ENTER_SELL_SHOP.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common
    
    #进入金钱物品兑换界面
    data modify storage global_shop:menu_preset_and_control CONTROL_CASH_EXCHANGE set value {id:"minecraft:paper",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.enter_cash","color":"yellow"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_CASH_EXCHANGE.tag.global_shop.id int 1 run scoreboard players get CONTROL_CASH_EXCHANGE glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_CASH_EXCHANGE.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common
    
    #浏览回收商店
    data modify storage global_shop:menu_preset_and_control CONTROL_ENTER_RECYCLE_SHOP set value {id:"minecraft:composter",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.enter_recycle_shop","color":"yellow"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_ENTER_RECYCLE_SHOP.tag.global_shop.id int 1 run scoreboard players get CONTROL_ENTER_RECYCLE_SHOP glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_ENTER_RECYCLE_SHOP.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common

    #玩家个人设置
    data modify storage global_shop:menu_preset_and_control CONTROL_PLAYER_SETTINGS set value {id:"minecraft:crafting_table",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.enter_player_settings","color":"light_purple"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_PLAYER_SETTINGS.tag.global_shop.id int 1 run scoreboard players get CONTROL_PLAYER_SETTINGS glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_PLAYER_SETTINGS.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common
#endregion

# region 玩家商店主菜单
    #出售物品
    data modify storage global_shop:menu_preset_and_control CONTROL_SELL_ITEM set value {id:"minecraft:emerald",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.player_shop_main.sell","color":"aqua"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_SELL_ITEM.tag.global_shop.id int 1 run scoreboard players get CONTROL_SELL_ITEM glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_SELL_ITEM.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common

    #浏览玩家物品
    data modify storage global_shop:menu_preset_and_control CONTROL_VIEW_PLAYER_SHOP set value {id:"minecraft:nether_star",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.player_shop_main.enter_player_shop.1","color":"yellow"},{"storage":"global_shop:storage","nbt":"char.SEPERATOR","interpret":1},{"storage":"global_shop:storage","nbt":"char.SEPERATOR","interpret":1},{"text":"  "},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.player_shop_main.enter_player_shop.2","color":"aqua"},{"storage":"global_shop:storage","nbt":"char.SEPERATOR","interpret":1},{"storage":"global_shop:storage","nbt":"char.SEPERATOR","interpret":1},{"text":"● ","color":"white"},{"text":"/trigger glbs_inputter_1 set ","color":"white"},{"text":"?","color":"yellow"},{"storage":"global_shop:storage","nbt":"char.SEPERATOR","interpret":1},{"text":"  "},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.player_shop_main.enter_player_shop.3","color":"green"},{"storage":"global_shop:storage","nbt":"char.SEPERATOR","interpret":1},{"storage":"global_shop:storage","nbt":"char.SEPERATOR","interpret":1},{"text":"● ","color":"white"},{"text":"/trigger glbs_inputter_2 set ","color":"white"},{"text":"?","color":"yellow"},{"storage":"global_shop:storage","nbt":"char.SEPERATOR","interpret":1},{"text":"  "},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.player_shop_main.enter_player_shop.4","color":"green"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_VIEW_PLAYER_SHOP.tag.global_shop.id int 1 run scoreboard players get CONTROL_VIEW_PLAYER_SHOP glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_VIEW_PLAYER_SHOP.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common

    #浏览正在出售的物品
    data modify storage global_shop:menu_preset_and_control CONTROL_VIEW_MY_SELLING set value {id:"minecraft:ender_chest",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.player_shop_main.enter_view_selling","color":"yellow"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_VIEW_MY_SELLING.tag.global_shop.id int 1 run scoreboard players get CONTROL_VIEW_MY_SELLING glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_VIEW_MY_SELLING.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common

    #领取收入
    data modify storage global_shop:menu_preset_and_control CONTROL_COLLECT_INCOME set value {id:"minecraft:golden_pickaxe",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.player_shop_main.get_income","color":"yellow"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_COLLECT_INCOME.tag.global_shop.id int 1 run scoreboard players get CONTROL_COLLECT_INCOME glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_COLLECT_INCOME.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common
    
    #查询余额
    data modify storage global_shop:menu_preset_and_control CONTROL_VIEW_MONEY set value {id:"minecraft:gold_ingot",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.player_shop_main.view_my_money","color":"yellow"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_VIEW_MONEY.tag.global_shop.id int 1 run scoreboard players get CONTROL_VIEW_MONEY glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_VIEW_MONEY.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common

    #浏览退回的物品
    data modify storage global_shop:menu_preset_and_control CONTROL_VIEW_RETURN_ITEMS set value {id:"minecraft:composter",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.player_shop_main.enter_view_return","color":"yellow"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_VIEW_RETURN_ITEMS.tag.global_shop.id int 1 run scoreboard players get CONTROL_VIEW_RETURN_ITEMS glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_VIEW_RETURN_ITEMS.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common

    #浏览历史购买物品
    data modify storage global_shop:menu_preset_and_control CONTROL_VIEW_MY_BOUGHT set value {id:"minecraft:ender_pearl",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.player_shop_main.enter_view_bought","color":"yellow"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_VIEW_MY_BOUGHT.tag.global_shop.id int 1 run scoreboard players get CONTROL_VIEW_MY_BOUGHT glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_VIEW_MY_BOUGHT.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common

    #浏览历史出售物品
    data modify storage global_shop:menu_preset_and_control CONTROL_VIEW_MY_SOLD set value {id:"minecraft:ender_eye",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.player_shop_main.enter_view_sold","color":"yellow"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_VIEW_MY_SOLD.tag.global_shop.id int 1 run scoreboard players get CONTROL_VIEW_MY_SOLD glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_VIEW_MY_SOLD.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common
#endregion

# region 编辑模式菜单

    #向出售商店添加物品
    data modify storage global_shop:menu_preset_and_control CONTROL_ADD_ITEM_TO_SELL_SHOP set value {id:"minecraft:barrel",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.edit_main.add_to_sell_shop","color":"yellow"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_ADD_ITEM_TO_SELL_SHOP.tag.global_shop.id int 1 run scoreboard players get CONTROL_ADD_ITEM_TO_SELL_SHOP glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_ADD_ITEM_TO_SELL_SHOP.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common

    #从出售商店中去除物品
    data modify storage global_shop:menu_preset_and_control CONTROL_REMOVE_ITEM_FROM_SELL_SHOP set value {id:"minecraft:barrel",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.edit_main.remove_from_sell_shop","color":"yellow"}]},Enchantments:[{id:"minecraft:protection",lvl:1s}]},HideFlags:1b}
    execute store result storage global_shop:menu_preset_and_control CONTROL_REMOVE_ITEM_FROM_SELL_SHOP.tag.global_shop.id int 1 run scoreboard players get CONTROL_REMOVE_ITEM_FROM_SELL_SHOP glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_REMOVE_ITEM_FROM_SELL_SHOP.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common

    #向回收商店添加物品
    data modify storage global_shop:menu_preset_and_control CONTROL_ADD_ITEM_TO_RECYCLE_SHOP set value {id:"minecraft:composter",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.edit_main.add_to_recycle_shop","color":"yellow"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_ADD_ITEM_TO_RECYCLE_SHOP.tag.global_shop.id int 1 run scoreboard players get CONTROL_ADD_ITEM_TO_RECYCLE_SHOP glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_ADD_ITEM_TO_RECYCLE_SHOP.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common

    #从回收商店中去除物品
    data modify storage global_shop:menu_preset_and_control CONTROL_REMOVE_ITEM_FROM_RECYCLE_SHOP set value {id:"minecraft:composter",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.edit_main.remove_from_recycle_shop","color":"yellow"}]},Enchantments:[{id:"minecraft:protection",lvl:1s}],HideFlags:1b}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_REMOVE_ITEM_FROM_RECYCLE_SHOP.tag.global_shop.id int 1 run scoreboard players get CONTROL_REMOVE_ITEM_FROM_RECYCLE_SHOP glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_REMOVE_ITEM_FROM_RECYCLE_SHOP.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common

    #修改金钱兑换的物品和比率
    data modify storage global_shop:menu_preset_and_control CONTROL_CHANGE_EXCHANGE_RATE set value {id:"minecraft:paper",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.edit_main.enter_edit_cash","color":"yellow"}]},Enchantments:[{id:"minecraft:protection",lvl:1s}],HideFlags:1b}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_CHANGE_EXCHANGE_RATE.tag.global_shop.id int 1 run scoreboard players get CONTROL_CHANGE_EXCHANGE_RATE glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_CHANGE_EXCHANGE_RATE.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common

    #进入管理员全局设置页面
    data modify storage global_shop:menu_preset_and_control CONTROL_SETTING_PAGE set value {id:"minecraft:crafting_table",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.edit_main.enter_admin_settings","color":"gold"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_SETTING_PAGE.tag.global_shop.id int 1 run scoreboard players get CONTROL_SETTING_PAGE glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_SETTING_PAGE.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common

    #卸载
    data modify storage global_shop:menu_preset_and_control CONTROL_UNINSTALL set value {id:"minecraft:tnt",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.edit_main.uninstall","color":"yellow"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_UNINSTALL.tag.global_shop.id int 1 run scoreboard players get CONTROL_UNINSTALL glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_UNINSTALL.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common

#endregion

# region 货币设置页面
    #设置货币物品
    data modify storage global_shop:menu_preset_and_control CONTROL_EDIT_CASH_ITEM set value {id:"minecraft:cyan_wool",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.edit_cash.set_item","color":"gold"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_EDIT_CASH_ITEM.tag.global_shop.id int 1 run scoreboard players get CONTROL_EDIT_CASH_ITEM glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_EDIT_CASH_ITEM.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common
    #设置货币价格
    data modify storage global_shop:menu_preset_and_control CONTROL_EDIT_CASH_PRICE set value {id:"minecraft:yellow_wool",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.edit_cash.set_price","color":"gold"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_EDIT_CASH_PRICE.tag.global_shop.id int 1 run scoreboard players get CONTROL_EDIT_CASH_PRICE glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_EDIT_CASH_PRICE.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common
    #禁用/启用货币
    data modify storage global_shop:menu_preset_and_control CONTROL_CASH_SWITCH_STATUS set value {id:"minecraft:red_wool",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.edit_cash.switch","color":"gold"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_CASH_SWITCH_STATUS.tag.global_shop.id int 1 run scoreboard players get CONTROL_CASH_SWITCH_STATUS glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_CASH_SWITCH_STATUS.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common
    #被禁用的货币
    data modify storage global_shop:menu_preset_and_control CONTROL_DISABLED_CASH set value {id:"minecraft:barrier",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.edit_cash.disabled","color":"red"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_DISABLED_CASH.tag.global_shop.id int 1 run scoreboard players get CONTROL_DISABLED_CASH glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_DISABLED_CASH.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common
    #重置货币
    data modify storage global_shop:menu_preset_and_control CONTROL_RESET_CASH set value {id:"minecraft:totem_of_undying",Count:1b,tag:{global_shop:{text:[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.edit_cash.reset_all.1","color":"red"},{"storage":"global_shop:storage","nbt":"char.SEPERATOR","interpret":1},{"storage":"global_shop:storage","nbt":"char.SEPERATOR","interpret":1},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.edit_cash.reset_all.2","color":"red","bold":1},{"storage":"global_shop:storage","nbt":"char.SEPERATOR","interpret":1},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.edit_cash.reset_all.3","color":"green"},{"storage":"global_shop:storage","nbt":"char.SEPERATOR","interpret":1},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.edit_cash.reset_all.4","color":"green"},{"storage":"global_shop:storage","nbt":"char.SEPERATOR","interpret":1},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.control.edit_cash.reset_all.5","color":"green"}]}}}
    execute store result storage global_shop:menu_preset_and_control CONTROL_RESET_CASH.tag.global_shop.id int 1 run scoreboard players get CONTROL_RESET_CASH glbs_common
    execute store result storage global_shop:menu_preset_and_control CONTROL_RESET_CASH.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common
#endregion

# region 货币兑换页面
    #储存主手上的货币
        data modify storage global_shop:menu_preset_and_control CONTROL_DEPOSIT_CASH set value {id:"minecraft:chest",Count:1b,tag:{global_shop:{text:[{"text":"存入货币","color":"gold"}]}}}
        execute store result storage global_shop:menu_preset_and_control CONTROL_DEPOSIT_CASH.tag.global_shop.id int 1 run scoreboard players get CONTROL_COIN_EXCHANGE glbs_common
        execute store result storage global_shop:menu_preset_and_control CONTROL_DEPOSIT_CASH.tag.global_shop.type int 1 run scoreboard players get ItemDataType::CONTROL glbs_common
#endregion