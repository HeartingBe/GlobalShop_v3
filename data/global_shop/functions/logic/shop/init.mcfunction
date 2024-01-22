# 添加记分板、创建常量、枚举等

# glbs_common 共用记分板，存储所有公共变量、常量等（已在 load.mcfunction 中创建）
   # 常量
      # 常数
      scoreboard players set 12 glbs_common 12
      # 约束相关
      scoreboard players set MAX_CONNECT_PLAYERS glbs_common 8
      scoreboard players set PLAYER_MAX_SELLING_ITEMS glbs_common 64
      scoreboard players set TOTAL_MAX_SELLING_ITEMS glbs_common 8192
      scoreboard players set PLAYER_MAX_BOUGHT_ITEMS glbs_common 32
      scoreboard players set TOTAL_MAX_BOUGHT_ITEMS glbs_common 4096
      scoreboard players set PLAYER_MAX_SOLD_ITEMS glbs_common 32
      scoreboard players set TOTAL_MAX_SOLD_ITEMS glbs_common 4096
      # 权限
      scoreboard players set PERMISSION_PLAYER glbs_common 0
      scoreboard players set PERMISSION_ADMIN glbs_common 1

# open_global_shop 玩家触发记分板
scoreboard objectives add open_global_shop trigger

# glbs_permission 玩家权限记分板
scoreboard objectives add glbs_permission dummy

# glbs_err_code 错误码记分板
scoreboard objectives add glbs_err_code dummy
scoreboard players set SUCCESS glbs_err_code 0
scoreboard players set INVALID_ENV glbs_err_code -1
scoreboard players set NO_PERMISSION glbs_err_code -2

# glbs_id 记录物品展示实体的 id（控件无 id）
scoreboard objectives add glbs_id dummy

# glbs_order 记录物品展示实体的 order
scoreboard objectives add glbs_order dummy

scoreboard players set OTHER_ERROR glbs_err_code -10000
