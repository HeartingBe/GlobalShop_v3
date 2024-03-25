# 停止运行
function global_shop:logic/shop/stop

# 版本超前, 要求重装(强制)
# tag 版本号修改点
execute if score g_version glbs_common matches 1.. as @a if score @s glbs_permission = Permission::ADMIN glbs_common run tellraw @s ["\u00a7c全球商店数据包停止运行, 原因是服务器运行过更高版本的全球商店(版本号 ",{"score":{"objective":"glbs_common","name":"g_version"}},"\u00a7c), 当前安装的版本号为 \u00a7f0\u00a7c, 请更换对应版本的全球商店数据包"]

# 新版本在此处增加更新函数
#execute if score g_version glbs_common matches ..-1 run