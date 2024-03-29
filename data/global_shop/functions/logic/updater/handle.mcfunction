# 停止运行
function global_shop:logic/shop/stop

# 版本超前, 要求重装(强制)
# tag 版本号修改点
execute if score g_version glbs_common matches 1.. as @a if score @s glbs_permission = Permission::ADMIN glbs_common run tellraw @s [{"text":"全球商店停止运行","color":"red"},"\n",{"text":"因为这个游戏存档运行过更高版本的全球商店, 版本号为","color":"red"}," ",{"score":{"objective":"glbs_common","name":"g_version"},"color":"yellow"},"\n",{"text":"当前安装的版本号为","color":"red"}," ",{"text":"0","color":"white"},"\n",{"text":"请更换对应版本的全球商店数据包","color":"red"}]

# 新版本在此处增加更新函数
#execute if score g_version glbs_common matches ..-1 run