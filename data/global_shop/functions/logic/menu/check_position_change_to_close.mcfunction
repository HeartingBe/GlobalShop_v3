# @executor Menu

# 检查坐标变化
execute store result score temp glbs_common run function global_shop:logic/menu/check_position_change
# 位置改变，关掉商店
execute if score temp glbs_common matches 0 run function global_shop:logic/menu/perform/position_change