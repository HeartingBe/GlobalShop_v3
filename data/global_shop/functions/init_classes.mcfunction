# 调用所有类的 Init 函数初始化

tellraw @a [" \n\u00a7f\u25a0\u00a77\u25a0\u00a78\u25a0 \u00a7dGlobalShop \u00a7a成功初始化"]

function global_shop:logic/shop/init

function global_shop:logic/scheduler/init

function global_shop:logic/menu_preset_and_control/init

scoreboard players set g_isInit glbs_common 1