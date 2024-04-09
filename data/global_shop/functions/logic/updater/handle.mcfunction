# 停止运行
function global_shop:logic/shop/stop

# 版本超前, 要求重装(强制)
# tag 版本号修改点
execute if score g_version glbs_common matches 2.. as @a if score @s glbs_permission = Permission::ADMIN glbs_common run tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"error.wrong_version.newer.1\"","color":"red"}," ",{"score":{"objective":"glbs_common","name":"g_version"},"color":"yellow"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"error.wrong_version.newer.2\"","color":"red"}," ",{"text":"0","color":"white"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"error.wrong_version.newer.3\"","color":"red"}]

# 新版本在此处增加更新函数
#execute if score g_version glbs_common matches ..? run