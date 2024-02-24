#> global_shop:storage/store_manager/register_player
# 执行玩家注册相关操作
# @executor Player
# @throw REGIST_PLAYER_NUM_LIMIT=-3 注册玩家数量达到上限

# 注册玩家数达到上限
execute if score g_nextUid glbs_common > MAX_REGIST_PLAYER_NUM glbs_common run return run scoreboard players get REGIST_PLAYER_NUM_LIMIT glbs_err_code

# 分配 uid
scoreboard players operation @s glbs_uid = g_nextUid glbs_common
scoreboard players add g_nextUid glbs_common 1

# 解析玩家名
   # 文本展示实体的 text 解析 json 不能用 @s 代表本函数的执行者（因为 @s 是文本展示实体它自己），所以用临时标签解析
   tag @s add glbs_temp_parse_player_name
   # 解析玩家名，存储在 global_shop:common g_playerNameJson
      # 调 Player#ParsePlayerName 解析，出参在 global_shop:common g_playerNameJson，是双层引号 json
      function global_shop:logic/player/parse_player_name
         # 调 Player#ParsePlayerNameGetName 提取 g_playerNameJson 的 text
         # 出参在 g_playerNameJson:{name:""}，是单层引号 json
         data remove storage global_shop:common temp
         data modify storage global_shop:common temp.input set from storage global_shop:common g_playerNameJson
         function global_shop:logic/player/parse_player_name/get_name with storage global_shop:common temp
   # 用临时标签解析，最后去掉
   tag @s remove glbs_temp_parse_player_name

# 存储玩家名
   # macro {uid: int, playerName: string}
   data remove storage global_shop:common temp
   execute store result storage global_shop:common temp.uid int 1.0 run scoreboard players get @s glbs_uid
   data modify storage global_shop:common temp.playerName set from storage global_shop:common g_playerNameJson.name
   function global_shop:storage/store_manager/register_player/set_kv with storage global_shop:common temp

return run scoreboard players get SUCCESS glbs_err_code