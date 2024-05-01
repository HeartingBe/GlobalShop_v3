#> global_shop:storage/store_manager/register_player
# 执行玩家注册相关操作
# @executor Player
# @return 0 - 成功；1 - 失败

# 注册玩家数达到上限
execute if score g_nextUid glbs_common > MAX_REGIST_PLAYER_NUM glbs_common run return run function global_shop:storage/store_manager/register_player/reach_max_reg_limit

# 分配 uid
scoreboard players operation @s glbs_uid = g_nextUid glbs_common
scoreboard players add g_nextUid glbs_common 1

# 解析玩家名
   # 安全措施（避免某些原因使得有玩家残留 glbs_temp_parse_player_name 标签导致解析名字出问题，比如一轮命令没执行完，为了让服主乱玩都不出问题我是真的费心费力。这是低频操作因为每个玩家的注册操作只有一次）
   tag @a remove glbs_temp_parse_player_name
   # 文本展示实体的 text 解析 json 不能用 @s 代表本函数的执行者（因为 @s 是文本展示实体它自己），所以用临时标签解析
   tag @s add glbs_temp_parse_player_name
   # 解析玩家名，存储在 global_shop:common g_playerNameJson
      # 调 Player#ParsePlayerName 解析，出参在 global_shop:common g_playerNameJson，是双层引号 json
      function global_shop:logic/player/parse_player_name
         # 调 Player#ParsePlayerNameGetName 提取 g_playerNameJson 的 text
         # 出参在 g_playerNameJson:{name:""}，是单层引号 json
         data remove storage global_shop:common temp
         data modify storage global_shop:common temp.input set from storage global_shop:common g_playerNameJson
         data remove storage global_shop:common g_playerNameJson
         function global_shop:logic/player/parse_player_name/get_name with storage global_shop:common temp
   # 用临时标签解析，最后去掉
   tag @s remove glbs_temp_parse_player_name

# 判断解析是否失败
data modify storage global_shop:common checkStrList set value ["0"]
# temp 为 0 说明尾插失败，即 g_playerNameJson.name 不存在或不是字符串
execute store result score temp glbs_common run data modify storage global_shop:common checkStrList append from storage global_shop:common g_playerNameJson.name
execute if score temp glbs_common matches 0 run return run function global_shop:storage/store_manager/register_player/parse_player_name_fail
# 判断是否是空串
execute store result score temp glbs_common run data get storage global_shop:common g_playerNameJson.name
execute if score temp glbs_common matches 0 run return run function global_shop:storage/store_manager/register_player/parse_player_name_fail

# 存储玩家名
   # macro {uid: int, playerName: string}
   data remove storage global_shop:common temp
   execute store result storage global_shop:common temp.uid int 1.0 run scoreboard players get @s glbs_uid
   data modify storage global_shop:common temp.playerName set from storage global_shop:common g_playerNameJson.name
   function global_shop:storage/store_manager/register_player/set_kv with storage global_shop:common temp

return 0