# Please translate all the following commands into the corresponding language ↓

function global_shop:text/zh_cn/common

# 其他
data modify storage global_shop:storage g_lang.ask_if_reinit.1 set value "全球商店已经初始化了"
data modify storage global_shop:storage g_lang.ask_if_reinit.2 set value "光标移到这里重新初始化"
data modify storage global_shop:storage g_lang.ask_if_reinit.3 set value "如果你误操作了全球商店的记分板、storage、实体等"
data modify storage global_shop:storage g_lang.ask_if_reinit.4 set value "可以尝试重新初始化"
data modify storage global_shop:storage g_lang.ask_if_reinit.5 set value "但部分数据并不会重新初始化"
data modify storage global_shop:storage g_lang.ask_if_reinit.6 set value "例如自定义金钱记分板、语言、玩家个人设置数据等"

data modify storage global_shop:storage g_lang.ask_boot.1 set value "全球商店初始化完成"
data modify storage global_shop:storage g_lang.ask_boot.2 set value "光标移到这里来启动商店"
data modify storage global_shop:storage g_lang.ask_boot.3 set value "普通玩家请忽略"
data modify storage global_shop:storage g_lang.ask_boot.4 set value "你需要拥有服务器管理员权限"
data modify storage global_shop:storage g_lang.ask_boot.5 set value "直接左键点击即可"

data modify storage global_shop:storage g_lang.tip_stop.1 set value "全球商店目前处于停止运行的状态, 可能的原因"
data modify storage global_shop:storage g_lang.tip_stop.2 set value "没有完整执行一轮的所有命令(数据可能已损坏)"
data modify storage global_shop:storage g_lang.tip_stop.3 set value "重装了不同版本的全球商店, 但又换回了正确的版本"
data modify storage global_shop:storage g_lang.tip_stop.4 set value "手动关闭"
data modify storage global_shop:storage g_lang.tip_stop.5 set value "新安装, 还未启动过"
data modify storage global_shop:storage g_lang.tip_stop.6 set value "请排查以上所有的问题"
data modify storage global_shop:storage g_lang.tip_stop.7 set value "然后点击这里启动全球商店"

data modify storage global_shop:storage g_lang.inputter_1.too_large.1 set value "输入的数太大了"
data modify storage global_shop:storage g_lang.inputter_1.too_large.2 set value "你的输入为:"
data modify storage global_shop:storage g_lang.inputter_1.too_large.3 set value "允许输入的最大数为:"

data modify storage global_shop:storage g_lang.open.illegal_block.1 set value "你周围有非法方块(末地门、地狱门、折跃门等), 无法打开商店"
data modify storage global_shop:storage g_lang.open.illegal_block.2 set value "请与非法方块相隔一定距离再打开商店"

data modify storage global_shop:storage g_lang.open.welcome set value "欢迎使用全球商店"

data modify storage global_shop:storage g_lang.open.other_shop_around set value "周围有玩家在使用商店, 请相距至少 10 格"

data modify storage global_shop:storage g_lang.open.register_limit set value "全球商店注册玩家数量达到上限, 已停止注册"

data modify storage global_shop:storage g_lang.open.use_limit set value "同时使用商店的人数达到上限, 请稍后使用"

data modify storage global_shop:storage g_lang.open.already_use set value "你已经在使用商店了, 不能重复打开"

data modify storage global_shop:storage g_lang.open.illegal_dimension set value "当前维度未配置允许打开商店"

data modify storage global_shop:storage g_lang.use.incomplete set value "检测到你打开的商店不完整, 已强制关闭, 请重新打开"

data modify storage global_shop:storage g_lang.use.leave_game.1 set value "你之前在打开商店时退出了游戏, 已强制关闭"
data modify storage global_shop:storage g_lang.use.leave_game.2	g_lang.common.reopen_to_use_shop set value "要使用请重新打开"

data modify storage global_shop:storage g_lang.error.incomplete_execution.1 set value "全球商店出现错误, 未能完整执行一轮处理中所有的指令"
data modify storage global_shop:storage g_lang.error.incomplete_execution.2 set value "数据可能损坏, 已停止运行"

data modify storage global_shop:storage g_lang.use.use_long_time.1 set value "你使用商店太久了, 每次允许使用的分钟数为"
data modify storage global_shop:storage g_lang.use.use_long_time.2 set value "要使用请重新打开"

data modify storage global_shop:storage g_lang.stop set value "全球商店已停止运行"

data modify storage global_shop:storage g_lang.open.tip_open.1 set value "打开商店的方法:"
data modify storage global_shop:storage g_lang.open.tip_open.2 set value "执行命令:"
data modify storage global_shop:storage g_lang.open.tip_open.3 set value "可直接左键点击"
data modify storage global_shop:storage g_lang.open.tip_open.4 set value "左键点击直接执行命令"
data modify storage global_shop:storage g_lang.open.tip_open.5 set value "用 1 根木棍合成 1 根木棍"

data modify storage global_shop:storage g_lang.error.wrong_version.1 set value "这个游戏存档运行过更高版本的全球商店, 版本号为"
data modify storage global_shop:storage g_lang.error.wrong_version.2 set value "当前安装的版本号为"
data modify storage global_shop:storage g_lang.error.wrong_version.3 set value "请更换对应版本的全球商店数据包"

data modify storage global_shop:storage g_lang.boot.set_admin set value "已将你设置为商店管理员"

data modify storage global_shop:storage g_lang.boot.wrong_version.1 set value "全球商店启动失败"
data modify storage global_shop:storage g_lang.boot.wrong_version.2 set value "这个游戏存档运行过更高版本的全球商店, 版本号为"
data modify storage global_shop:storage g_lang.boot.wrong_version.3 set value "当前安装的版本号为"
data modify storage global_shop:storage g_lang.boot.wrong_version.4 set value "请更换对应版本的全球商店数据包"

data modify storage global_shop:storage g_lang.boot.chain_command_num_too_low.1 set value "全球商店启动失败"
data modify storage global_shop:storage g_lang.boot.chain_command_num_too_low.2 set value "因为连锁命令数过低, 当前为"
data modify storage global_shop:storage g_lang.boot.chain_command_num_too_low.3 set value "至少应为原版默认的 65536"
data modify storage global_shop:storage g_lang.boot.chain_command_num_too_low.4 set value "光标移到这里来修改连锁命令数"
data modify storage global_shop:storage g_lang.boot.chain_command_num_too_low.5 set value "执行命令:"
data modify storage global_shop:storage g_lang.boot.chain_command_num_too_low.6 set value "左键点击来将命令填入聊天栏"
data modify storage global_shop:storage g_lang.boot.chain_command_num_too_low.7 set value "请将 ? 替换为连锁命令数"
data modify storage global_shop:storage g_lang.boot.chain_command_num_too_low.8 set value "然后点击这里启动全球商店"

data modify storage global_shop:storage g_lang.boot.success set value "全球商店启动完成, 欢迎使用"

# 管理员全局设置
data modify storage global_shop:storage g_lang.admin_settings.lang.tip.1 set value "光标移到这里来输入自定义语言"
data modify storage global_shop:storage g_lang.admin_settings.lang.tip.2 set value "请输入并执行命令:"
data modify storage global_shop:storage g_lang.admin_settings.lang.tip.3 set value "左键点击来将命令填入聊天栏"
data modify storage global_shop:storage g_lang.admin_settings.lang.tip.4 set value "请将 ? 替换为新的自定义语言"
data modify storage global_shop:storage g_lang.admin_settings.lang.tip.5 set value "不要去掉双引号"
data modify storage global_shop:storage g_lang.admin_settings.lang.tip.6 set value "然后点击这里来确认修改(否则修改无效)"

data modify storage global_shop:storage g_lang.admin_settings.money_sc.tip.1 set value "光标移到这里来输入自定义金钱记分板"
data modify storage global_shop:storage g_lang.admin_settings.money_sc.tip.2 set value "请输入并执行命令:"
data modify storage global_shop:storage g_lang.admin_settings.money_sc.tip.3 set value "左键点击来将命令填入聊天栏"
data modify storage global_shop:storage g_lang.admin_settings.money_sc.tip.4 set value "请将 ? 替换为新的自定义金钱记分板"
data modify storage global_shop:storage g_lang.admin_settings.money_sc.tip.5 set value "不要去掉双引号"
data modify storage global_shop:storage g_lang.admin_settings.money_sc.tip.6 set value "然后点击这里来确认修改(否则修改无效)"

data modify storage global_shop:storage g_lang.admin_settings.money_sc.success.1 set value "商店原先使用的金钱记分板为"
data modify storage global_shop:storage g_lang.admin_settings.money_sc.success.2 set value "成功设置现在使用的金钱记分板为"

data modify storage global_shop:storage g_lang.admin_settings.lang.fail.1 set value "无法将商店的语言设置为"
data modify storage global_shop:storage g_lang.admin_settings.lang.fail.2 set value "因为语言函数文件不存在或格式有误"

data modify storage global_shop:storage g_lang.admin_settings.lang.set_success.1 set value "商店原先使用的语言为"
data modify storage global_shop:storage g_lang.admin_settings.lang.set_success.2 set value "成功设置现在使用的语言为"

data modify storage global_shop:storage g_lang.admin_settings.lang.no_input set value "你没有输入自定义语言, 修改失败"

data modify storage global_shop:storage g_lang.admin_settings.money_sc.no_exist.1 set value "你输入的金钱记分板不存在, 商店仍保持使用原先的金钱记分板"
data modify storage global_shop:storage g_lang.admin_settings.money_sc.no_exist.2 set value "请重新尝试更改"

data modify storage global_shop:storage g_lang.admin_settings.money_sc.no_input set value "你没有输入自定义金钱记分板名称, 修改失败"

data modify storage global_shop:storage g_lang.admin_settings.uninstall.fail set value "抹除数据失败, 你需要输入"

data modify storage global_shop:storage g_lang.admin_settings.uninstall.success set value "抹除数据成功, 请继续上述卸载步骤, 再次感谢你使用全球商店数据包"

# 货币
data modify storage global_shop:storage g_lang.cash.reset_success set value "成功重置货币"

data modify storage global_shop:storage g_lang.cash.tip_input_value.1 set value "点击这里来设置货币的面值"
data modify storage global_shop:storage g_lang.cash.tip_input_value.2 set value "请将 ? 更改为你想要的面值"

data modify storage global_shop:storage g_lang.cash.disable.no_select set value "请先左键选中货币后再启用或禁用"

data modify storage global_shop:storage g_lang.cash.set_item.disabled set value "这个货币已被禁用, 请先启用再修改其外观物品"

data modify storage global_shop:storage g_lang.cash.set_item.empty_hand set value "设置货币的外观物品失败, 因为你的主手是空的"

data modify storage global_shop:storage g_lang.cash.set_item.no_select set value "请先左键选中货币后再修改货币的外观物品"

data modify storage global_shop:storage g_lang.cash.set_item.success set value "成功修改货币的外观物品"

data modify storage global_shop:storage g_lang.cash.set_price.disabled set value "这个货币已被禁用, 请先启用再修改其面值"

data modify storage global_shop:storage g_lang.cash.set_price.no_select set value "请先左键选中货币后再修改面值"

data modify storage global_shop:storage g_lang.cash.set_price.negative set value "货币面值必须为正数, 请重新输入"

data modify storage global_shop:storage g_lang.cash.set_price.success set value "设置面值成功"

data modify storage global_shop:storage g_lang.cash.switch.disable set value "已禁用该货币"

data modify storage global_shop:storage g_lang.cash.switch.enable set value "已启用该货币"

data modify storage global_shop:storage g_lang.cash.admin_enter.multi.1 set value "无法进入货币编辑界面, 因为有其他管理员在编辑货币"
data modify storage global_shop:storage g_lang.cash.admin_enter.multi.2 set value "同时只允许一个管理员编辑货币"

data modify storage global_shop:storage g_lang.cash.player_enter.editing set value "有管理员正在编辑货币兑换, 请等待管理员维护完成后再使用"

data modify storage global_shop:storage g_lang.cash.exchange.disabled set value "这个货币已被禁用"

data modify storage global_shop:storage g_lang.cash.exchange.money_no_enough.1 set value "你的钱不够, 无法取钱。面值为 "
data modify storage global_shop:storage g_lang.cash.exchange.money_no_enough.2 set value "你只有"

data modify storage global_shop:storage g_lang.cash.exchange.draw_success set value "已取钱。你剩余的金钱为"

data modify storage global_shop:storage g_lang.cash.exchange.too_much_money.1 set value "你的钱太多, 无法存钱。你的金钱为"
data modify storage global_shop:storage g_lang.cash.exchange.too_much_money.2 set value "全球商店为了避免整数溢出, 金钱不能超过"
data modify storage global_shop:storage g_lang.cash.exchange.too_much_money.3 set value "否则不能存钱"

data modify storage global_shop:storage g_lang.cash.exchange.no_hold_cash set value "你的主手不是货币, 请拿着货币再存钱"

data modify storage global_shop:storage g_lang.cash.exchange.save_success set value "存入成功。你当前的金钱为"

# 回收商店
data modify storage global_shop:storage g_lang.recycle_shop.set_success set value "成功设置该物品到回收商店"

data modify storage global_shop:storage g_lang.recycle_shop.set_fail.empty_hand set value "向回收商店添加物品失败, 因为你的主手是空的, 请重新添加"

data modify storage global_shop:storage g_lang.recycle_shop.set_fail.negative.1 set value "向回收商店添加物品失败, 价格必须是正数, 你的输入为:"
data modify storage global_shop:storage g_lang.recycle_shop.set_fail.negative.2 set value "请重新输入"

data modify storage global_shop:storage g_lang.recycle_shop.set.tip.1 set value "光标移到这里来添加要回收的物品"
data modify storage global_shop:storage g_lang.recycle_shop.set.tip.2 set value "把要添加的回收物品拿在主手"
data modify storage global_shop:storage g_lang.recycle_shop.set.tip.3 set value "执行命令:"
data modify storage global_shop:storage g_lang.recycle_shop.set.tip.4 set value "左键点击来将命令填入聊天栏"
data modify storage global_shop:storage g_lang.recycle_shop.set.tip.5 set value "请将 ? 替换为回收价格"

data modify storage global_shop:storage g_lang.recycle_shop.no_exist set value "该回收商店物品不存在, 已刷新显示"

data modify storage global_shop:storage g_lang.recycle_shop.delete.again set value "再次点击来删除这个回收商店的物品"

data modify storage global_shop:storage g_lang.recycle_shop.delete.success set value "成功删除该回收商店物品"

data modify storage global_shop:storage g_lang.recycle_shop.recycle.item_no_enough.1 set value "需要的回收物品数量不足, 需要"
data modify storage global_shop:storage g_lang.recycle_shop.recycle.item_no_enough.2 set value "你只有"

data modify storage global_shop:storage g_lang.recycle_shop.recycle.success.1 set value "回收成功, 获得金钱:"
data modify storage global_shop:storage g_lang.recycle_shop.recycle.success.2 set value "现在你的金钱为"

data modify storage global_shop:storage g_lang.recycle_shop.recycle.too_much_money.1 set value "你的钱太多, 无法回收物品。你的金钱为"
data modify storage global_shop:storage g_lang.recycle_shop.recycle.too_much_money.2 set value "全球商店为了避免整数溢出, 金钱不能超过"
data modify storage global_shop:storage g_lang.recycle_shop.recycle.too_much_money.3 set value "否则不能回收物品"

data modify storage global_shop:storage g_lang.recycle_shop.recycle.tellraw_item set value "回收商店物品"

# 出售商店
data modify storage global_shop:storage g_lang.sell_shop.set_success set value "成功设置该物品到出售商店"

data modify storage global_shop:storage g_lang.sell_shop.set_fail.empty_hand set value "向出售商店添加物品失败, 因为你的主手是空的, 请重新添加"

data modify storage global_shop:storage g_lang.sell_shop.set_fail.negative.1 set value "向出售商店添加物品失败, 价格必须是正数, 你的输入为:"
data modify storage global_shop:storage g_lang.sell_shop.set_fail.negative.2 set value "请重新输入"

data modify storage global_shop:storage g_lang.sell_shop.set.tip.1 set value "光标移到这里来添加要出售的物品"
data modify storage global_shop:storage g_lang.sell_shop.set.tip.2 set value "把要添加的出售物品拿在主手"
data modify storage global_shop:storage g_lang.sell_shop.set.tip.3 set value "执行命令:"
data modify storage global_shop:storage g_lang.sell_shop.set.tip.4 set value "左键点击来将命令填入聊天栏"
data modify storage global_shop:storage g_lang.sell_shop.set.tip.5 set value "请将 ? 替换为出售价格"

data modify storage global_shop:storage g_lang.sell_shop.no_exist set value "该出售商店物品不存在, 已刷新显示"

data modify storage global_shop:storage g_lang.sell_shop.delete.again set value "再次点击来删除这个出售商店的物品"

data modify storage global_shop:storage g_lang.sell_shop.delete.success set value "成功删除该出售商店物品"

data modify storage global_shop:storage g_lang.sell_shop.buy.money_not_enough.1 set value "你的钱不够, 无法购买该出售商店的物品。需要"
data modify storage global_shop:storage g_lang.sell_shop.buy.money_not_enough.2 set value "你只有"

data modify storage global_shop:storage g_lang.sell_shop.buy.success set value "成功购买出售商店的物品"

data modify storage global_shop:storage g_lang.sell_shop.buy.tellraw_item set value "出售商店物品"

# 主菜单
data modify storage global_shop:storage g_lang.main.back_fail set value "你已经位于主菜单。要退出商店, 请脱离椅子"

# 编辑模式主菜单
data modify storage global_shop:storage g_lang.edit_main.no_permission set value "无法进入编辑模式, 因为你不是管理员"

data modify storage global_shop:storage g_lang.edit_main.no_select set value "需要先点击选择某个选项才能进行后续操作, 你还没有选择"

data modify storage global_shop:storage g_lang.edit_main.install_tip.1 set value "感谢你使用全球商店数据包"
data modify storage global_shop:storage g_lang.edit_main.install_tip.2 set value "你需要按照以下步骤先抹除所有数据"
data modify storage global_shop:storage g_lang.edit_main.install_tip.3 set value "左键点击来将命令填入聊天栏"
data modify storage global_shop:storage g_lang.edit_main.install_tip.4 set value "将"
data modify storage global_shop:storage g_lang.edit_main.install_tip.5 set value "改为"
data modify storage global_shop:storage g_lang.edit_main.install_tip.6 set value "然后点击这里来停止运行并抹除所有数据"
data modify storage global_shop:storage g_lang.edit_main.install_tip.7 set value "然后点击这里来禁用全球商店数据包"
data modify storage global_shop:storage g_lang.edit_main.install_tip.8 set value "然后请立即删除数据包文件"
data modify storage global_shop:storage g_lang.edit_main.install_tip.9 set value "然后点击这里重载其他数据包"
data modify storage global_shop:storage g_lang.edit_main.install_tip.10 set value "你已经完全卸载全球商店数据包, 再次感谢你的使用"

# 玩家个人设置
data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_d.success set value "成功调整物品信息框前后位置"

data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_d.overflow.1 set value "物品信息框前后位置变化的范围是"
data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_d.overflow.2 set value "当前你设置的前后位置变化是:"
data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_d.overflow.3 set value "之后将无法再往溢出方向继续调整"

data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_h.success set value "成功调整物品信息框左右位置"

data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_h.overflow.1 set value "物品信息框左右位置变化的范围是"
data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_h.overflow.2 set value "当前你设置的左右位置变化是:"
data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_h.overflow.3 set value "之后将无法再往溢出方向继续调整"

data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_v.success set value "成功调整物品信息框上下位置"

data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_v.overflow.1 set value "物品信息框上下位置变化的范围是"
data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_v.overflow.2 set value "当前你设置的上下位置变化是:"
data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_v.overflow.3 set value "之后将无法再往溢出方向继续调整"

data modify storage global_shop:storage g_lang.player_settings.info_frame.size.success set value "成功调整物品信息框大小"

data modify storage global_shop:storage g_lang.player_settings.info_frame.size.overflow.1 set value "物品信息框自定义大小变化的范围是"
data modify storage global_shop:storage g_lang.player_settings.info_frame.size.overflow.2 set value "当前你设置的大小变化是:"
data modify storage global_shop:storage g_lang.player_settings.info_frame.size.overflow.3 set value "之后将无法再往溢出方向继续调整"

data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_d.tip.1 set value "光标移到这里来调整物品信息框前后位置"
data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_d.tip.2 set value "执行命令:"
data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_d.tip.3 set value "左键点击来将命令填入聊天栏"
data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_d.tip.4 set value "请将 ? 替换为你希望的位置变化"
data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_d.tip.5 set value "输入正数使物品信息框向前移动(离你更远)"
data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_d.tip.6 set value "输入负数使物品信息框向后移动(离你更近)"
data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_d.tip.7 set value "推荐的输入范围:"
data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_d.tip.8 set value "你可以多次调整直到合适"

data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_h.tip.1 set value "光标移到这里来调整物品信息框左右位置"
data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_h.tip.2 set value "执行命令:"
data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_h.tip.3 set value "左键点击来将命令填入聊天栏"
data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_h.tip.4 set value "请将 ? 替换为你希望的位置变化"
data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_h.tip.5 set value "输入负数使物品信息框向左移动"
data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_h.tip.6 set value "输入正数使物品信息框向右移动"
data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_h.tip.7 set value "推荐的输入范围:"
data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_h.tip.8 set value "你可以多次调整直到合适"

data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_v.tip.1 set value "光标移到这里来调整物品信息框上下位置"
data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_v.tip.2 set value "执行命令:"
data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_v.tip.3 set value "左键点击来将命令填入聊天栏"
data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_v.tip.4 set value "请将 ? 替换为你希望的位置变化"
data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_v.tip.5 set value "输入正数使物品信息框向上移动"
data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_v.tip.6 set value "输入负数使物品信息框向下移动"
data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_v.tip.7 set value "推荐的输入范围:"
data modify storage global_shop:storage g_lang.player_settings.info_frame.pos_v.tip.8 set value "你可以多次调整直到合适"

data modify storage global_shop:storage g_lang.player_settings.info_frame.size.tip.1 set value "光标移到这里来调整物品信息框大小"
data modify storage global_shop:storage g_lang.player_settings.info_frame.size.tip.2 set value "执行命令:"
data modify storage global_shop:storage g_lang.player_settings.info_frame.size.tip.3 set value "左键点击来将命令填入聊天栏"
data modify storage global_shop:storage g_lang.player_settings.info_frame.size.tip.4 set value "请将 ? 替换为你希望的大小变化"
data modify storage global_shop:storage g_lang.player_settings.info_frame.size.tip.5 set value "输入正数使物品信息框变大"
data modify storage global_shop:storage g_lang.player_settings.info_frame.size.tip.6 set value "输入负数使物品信息框变小"
data modify storage global_shop:storage g_lang.player_settings.info_frame.size.tip.7 set value "推荐的输入范围:"
data modify storage global_shop:storage g_lang.player_settings.info_frame.size.tip.8 set value "你可以多次调整直到合适"

data modify storage global_shop:storage g_lang.player_settings.info_frame.pos.reset_success set value "成功重置物品信息框位置"

data modify storage global_shop:storage g_lang.player_settings.info_frame.size.reset_success set value "成功重置物品信息框大小"

# 玩家商店
data modify storage global_shop:storage g_lang.player_shop.jump_order.success set value "跳转序号成功"

data modify storage global_shop:storage g_lang.player_shop.jump_id.success set value "寻找 id 成功"

data modify storage global_shop:storage g_lang.player_shop.jump_order.already set value "你已经在看这个序号的物品, 无需跳转"

data modify storage global_shop:storage g_lang.player_shop.jump_order.too_large set value "你输入的序号太大了, 商店的物品数量仅有"

data modify storage global_shop:storage g_lang.player_shop.jump_order.negative set value "你输入的序号是负数, 请输入正数"

data modify storage global_shop:storage g_lang.player_shop.jump_id.already set value "你已经在看这个 id 的物品, 无需跳转"

data modify storage global_shop:storage g_lang.player_shop.jump_id.negative set value "你输入的序号是负数, 请输入正数"

data modify storage global_shop:storage g_lang.player_shop.jump_id.no_found set value "没有找到这个 id 对应的物品"

data modify storage global_shop:storage g_lang.player_shop.no_exist set value "该玩家商店物品不存在, 已刷新显示"

data modify storage global_shop:storage g_lang.player_shop.buy.success set value "成功购买玩家物品"

data modify storage global_shop:storage g_lang.player_shop.buy.money_not_enough.1 set value "你的钱不够, 无法购买该玩家商店的物品。需要"
data modify storage global_shop:storage g_lang.player_shop.buy.money_not_enough.2 set value "你只有"

data modify storage global_shop:storage g_lang.player_shop.buy.yourself set value "这个物品是你自己出售的, 已直接取回"

data modify storage global_shop:storage g_lang.player_shop.buy.yourself_tip set value "再次左键取回"

data modify storage global_shop:storage g_lang.player_shop.buy.tellraw_item set value "玩家商店物品"

# 玩家商店主菜单
data modify storage global_shop:storage g_lang.player_shop_main.sell.success set value "成功上架物品"

data modify storage global_shop:storage g_lang.player_shop_main.no_income set value "没有待领取的收入, 快向其他人卖东西吧~"

data modify storage global_shop:storage g_lang.player_shop_main.income_success.1 set value "成功领取收入:"
data modify storage global_shop:storage g_lang.player_shop_main.income_success.2 set value "现在你的金钱为:"

data modify storage global_shop:storage g_lang.player_shop_main.income.too_much_money.1 set value "你的钱太多, 无法领取收入。你的金钱为"
data modify storage global_shop:storage g_lang.player_shop_main.income.too_much_money.2 set value "全球商店为了避免整数溢出, 金钱不能超过"
data modify storage global_shop:storage g_lang.player_shop_main.income.too_much_money.3 set value "否则不能领取收入"

data modify storage global_shop:storage g_lang.player_shop_main.sell.store_num_limit.1 set value "你上架和退回的物品达到最大数量"
data modify storage global_shop:storage g_lang.player_shop_main.sell.store_num_limit.2 set value "请取走一些物品再卖东西吧~"

data modify storage global_shop:storage g_lang.player_shop_main.sell.tip.1 set value "光标移到这里来上架物品"
data modify storage global_shop:storage g_lang.player_shop_main.sell.tip.2 set value "把要上架的物品拿在主手"
data modify storage global_shop:storage g_lang.player_shop_main.sell.tip.3 set value "执行命令:"
data modify storage global_shop:storage g_lang.player_shop_main.sell.tip.4 set value "左键点击来将命令填入聊天栏"
data modify storage global_shop:storage g_lang.player_shop_main.sell.tip.5 set value "请在 ? 处填写物品售价"

data modify storage global_shop:storage g_lang.player_shop_main.view_money set value "你的金钱:"

data modify storage global_shop:storage g_lang.player_shop_main.sell.cool_down set value "上架物品有冷却时间, 剩余秒数:"

data modify storage global_shop:storage g_lang.player_shop_main.sell.empty_hand.1 set value "上架物品失败, 因为你的主手是空的"
data modify storage global_shop:storage g_lang.player_shop_main.sell.empty_hand.2 set value "请将要上架的物品拿在主手, 然后重新尝试"

data modify storage global_shop:storage g_lang.player_shop_main.sell.negative.1 set value "上架物品失败, 价格必须是正数, 你的输入为"
data modify storage global_shop:storage g_lang.player_shop_main.sell.negative.2 set value "请重新输入"

# 查看历史购买
data modify storage global_shop:storage g_lang.view_bought.no_exist set value "该历史购买记录不存在, 已刷新显示"

data modify storage global_shop:storage g_lang.view_bought.tellraw_item set value "购买记录"

# 查看历史出售
data modify storage global_shop:storage g_lang.view_sold.no_exist set value "该历史出售记录不存在, 已刷新显示"

data modify storage global_shop:storage g_lang.view_sold.tellraw_item set value "出售记录"

# 查看自己正在出售
data modify storage global_shop:storage g_lang.view_selling.no_exist set value "该正在出售物品记录不存在, 已刷新显示"

data modify storage global_shop:storage g_lang.view_selling.take_back.success set value "成功取回这个上架的物品"

data modify storage global_shop:storage g_lang.view_selling.take_back.tellraw_item set value "再次左键取回"

# 查看退回的物品
data modify storage global_shop:storage g_lang.view_return.take_back.tip_click_again set value "再次点击来取回这个退回的物品"

data modify storage global_shop:storage g_lang.view_return.no_exist set value "该退回物品不存在, 已刷新显示"

data modify storage global_shop:storage g_lang.view_return.take_back.success set value "成功取回该退回的物品"

# 标题
data modify storage global_shop:storage g_lang.change_mode.admin_settings set value "管理员全局设置"

data modify storage global_shop:storage g_lang.change_mode.edit_cash set value "编辑货币"

data modify storage global_shop:storage g_lang.change_mode.edit_recycle set value "回收商店移除物品界面"

data modify storage global_shop:storage g_lang.change_mode.edit_sell set value "出售商店移除物品界面"

data modify storage global_shop:storage g_lang.change_mode.main set value "主菜单"

data modify storage global_shop:storage g_lang.change_mode.player_settings set value "玩家个人设置"

data modify storage global_shop:storage g_lang.change_mode.player_shop_main set value "玩家商店主界面"

data modify storage global_shop:storage g_lang.change_mode.view_bought set value "查看历史购买记录"

data modify storage global_shop:storage g_lang.change_mode.view_sold set value "查看历史出售记录"

data modify storage global_shop:storage g_lang.change_mode.view_selling set value "查看自己正在出售的物品"

data modify storage global_shop:storage g_lang.change_mode.view_return set value "查看退还的物品"

data modify storage global_shop:storage g_lang.change_mode.recycle set value "回收商店"

data modify storage global_shop:storage g_lang.change_mode.sell set value "出售商店"

data modify storage global_shop:storage g_lang.change_mode.edit_main set value "编辑模式主界面"

data modify storage global_shop:storage g_lang.change_mode.player_shop set value "玩家商店"

data modify storage global_shop:storage g_lang.change_mode.cash set value "存钱、取钱"

data modify storage global_shop:storage g_lang.open.close set value "商店已关闭, 欢迎再次光临"

# 控件
data modify storage global_shop:storage g_lang.control.cash_custom_name set value "全球商店货币"

data modify storage global_shop:storage g_lang.control.player_settings.info_frame.size set value "调整物品信息框大小"

data modify storage global_shop:storage g_lang.control.player_settings.info_frame.size.reset set value "恢复物品信息框默认大小"

data modify storage global_shop:storage g_lang.control.player_settings.info_frame.pos_v set value "调整物品信息框上下位置"

data modify storage global_shop:storage g_lang.control.player_settings.info_frame.pos_h set value "调整物品信息框左右位置"

data modify storage global_shop:storage g_lang.control.player_settings.info_frame.pos_d set value "调整物品信息框前后位置"

data modify storage global_shop:storage g_lang.control.player_settings.info_frame.pos.reset set value "恢复物品信息框默认位置"

data modify storage global_shop:storage g_lang.control.admin_settings.money_sc set value "修改使用的金钱记分板"

data modify storage global_shop:storage g_lang.control.admin_settings.lang set value "修改语言"

data modify storage global_shop:storage g_lang.control.enter_player_shop_main set value "进入玩家商店主界面"

data modify storage global_shop:storage g_lang.control.enter_edit set value "进入编辑模式"

data modify storage global_shop:storage g_lang.control.enter_sell_shop set value "浏览出售商店"

data modify storage global_shop:storage g_lang.control.enter_cash set value "存钱、取钱"

data modify storage global_shop:storage g_lang.control.enter_recycle_shop set value "浏览回收商店"

data modify storage global_shop:storage g_lang.control.enter_player_settings set value "个人设置"

data modify storage global_shop:storage g_lang.control.player_shop_main.sell set value "上架物品"

data modify storage global_shop:storage g_lang.control.player_shop_main.enter_player_shop.1 set value "浏览玩家商店"
data modify storage global_shop:storage g_lang.control.player_shop_main.enter_player_shop.2 set value "进入玩家商店后，输入:"
data modify storage global_shop:storage g_lang.control.player_shop_main.enter_player_shop.3 set value "跳转到这个序号的物品"
data modify storage global_shop:storage g_lang.control.player_shop_main.enter_player_shop.4 set value "寻找编号为这个 id 的物品"

data modify storage global_shop:storage g_lang.control.player_shop_main.enter_view_selling set value "查看自己正在出售的物品"

data modify storage global_shop:storage g_lang.control.player_shop_main.get_income set value "领取收入"

data modify storage global_shop:storage g_lang.control.player_shop_main.view_my_money set value "查看自己的金钱"

data modify storage global_shop:storage g_lang.control.player_shop_main.enter_view_return set value "查看退回的物品"

data modify storage global_shop:storage g_lang.control.player_shop_main.enter_view_bought set value "查看自己的物品购买记录"

data modify storage global_shop:storage g_lang.control.player_shop_main.enter_view_sold set value "查看自己的出售记录"

data modify storage global_shop:storage g_lang.control.edit_main.add_to_sell_shop set value "向出售商店添加物品"

data modify storage global_shop:storage g_lang.control.edit_main.remove_from_sell_shop set value "从出售商店中去除物品"

data modify storage global_shop:storage g_lang.control.edit_main.add_to_recycle_shop set value "向回收商店添加物品"

data modify storage global_shop:storage g_lang.control.edit_main.remove_from_recycle_shop set value "从回收商店中去除物品"

data modify storage global_shop:storage g_lang.control.edit_main.enter_edit_cash set value "修改货币兑换信息"

data modify storage global_shop:storage g_lang.control.edit_main.enter_admin_settings set value "全局设置"

data modify storage global_shop:storage g_lang.control.edit_main.uninstall set value "卸载全球商店"

data modify storage global_shop:storage g_lang.control.edit_cash.set_item set value "设置货币物品"

data modify storage global_shop:storage g_lang.control.edit_cash.set_price set value "设置货币价格"

data modify storage global_shop:storage g_lang.control.edit_cash.switch set value "禁用/启用货币"

data modify storage global_shop:storage g_lang.control.edit_cash.disabled set value "这个货币已被禁用"

data modify storage global_shop:storage g_lang.control.edit_cash.reset_all.1 set value "重置所有货币"
data modify storage global_shop:storage g_lang.control.edit_cash.reset_all.2 set value "慎重点击!"
data modify storage global_shop:storage g_lang.control.edit_cash.reset_all.3 set value "将五种货币的外观物品、"
data modify storage global_shop:storage g_lang.control.edit_cash.reset_all.4 set value "面值、开关状态"
data modify storage global_shop:storage g_lang.control.edit_cash.reset_all.5 set value "均还原为初始状态"

data modify storage global_shop:storage g_lang.control.cash.save_money set value "存钱"

# Do not modify the following command
return 1