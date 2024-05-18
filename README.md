Copyright © Mini_Ye All rights reserved.

---

## GlobalShop 项目地址
https://github.com/HeartingBe/GlobalShop_v3.git

## 作者主页or联系方式

### Mini_Ye

https://space.bilibili.com/133430292

可以直接给我发私信^_^

1579526201@qq.com

可以直接给我发邮件^_^

### Alumopper

https://alumopper.top/

## 版权声明和使用规定
1. 允许修改和发布修改后的版本，但需要保留代码中关于原作者（`Mini_Ye` 和 `Alumopper`）和项目的所有原始信息；
2. 禁止对原版本和修改后的版本采取任何形式的收费行为；
3. 源代码和映射后的数据包都需要保留原 `README.md` 文件，请勿修改脚本阻止该文件的复制；
4. 原作者不承担任何游戏存档因运行本数据包导致的一切问题；
5. 本数据包的多语言文本是为了方便玩家使用（不需要安装额外资源包），可能出现翻译不准确的情况，但不会包含对任何对象的不尊重或歧视。如果有争议表述，请联系作者，将修改表述以解除误会。
6. 最终解释权归原作者 Mini_Ye 和 Alumopper 所有。

## 使用说明

### 1 ) 如何下载？
**<font color=#FF0050 size=3>不要将本项目的源代码直接放入游戏存档运行</font>**

**<font color=orange size=4>请直接下载在 release 中的 `GlobalShop_v?.?.?.zip`，它就是对应版本源代码生成的数据包。</font>**

**<font color=orange size=4>请注意，如果你修改了本数据包的命令，请阅读 "3 )"</font>**

### 2 ) 如何选择本数据包的版本？
[version_records.md](version_records.md) 记录了本数据包的所有版本和对应的生效 minecraft 版本；

举例，假设版本号为 `v3.0.1`，其中 `v3.0` 是大版本号。只有当 minecraft 推出新版本后，作者才会推出新的大版本号来适配游戏的新版本；其中 `1` 是小版本号，仅供修复错误使用。因此，如果有 `v3.0.1` 和 `v3.0.8` 版本，你应该选择 `v3.0.8`，因为它们都在同一个游戏版本上生效，但后者修复了一些错误。

### 3 ) 我升级了游戏存档，可以直接替换这个数据包的新版本压缩包吗？

<font color=red>不可以！升级你的存档时，本数据包的旧数据不可用。</font>

转换数据格式的成本过高，请原谅作者无力维护升级存档功能。例如，你在 `JE 1.20.4` 版本的存档中使用了本数据包的 `v3.0` 版本，当你将存档升级为 `JE 1.20.6` 时，虽然本数据包的 `v3.1` 版本适配 `JE 1.20.6`，但是你不能直接更换数据包压缩文件来试图升级数据包，因为数据格式不相同。

<font color=lightgreen>正确的做法是</font>，在存档升级之前进入存档，在商店的控制面板中按照步骤卸载商店，清空所有的数据（必要时应该提醒玩家取回物品），然后再升级你的存档。在新版本的存档中，再安装数据包的新版本。

### 4 ) 我修改了源代码，如何生成可运行的数据包？
请按照以下步骤生成数据包：
1. 运行 `mapper/gen_mapped_datapack.py`，在 `mapper` 文件夹中会新增 `GlobalShop_v3.?.?` 文件夹
2. 进入 `mapper/GlobalShop_v3.?.?` 文件夹，将里面所有内容压缩为压缩包 `GlobalShop_v3.?.?.zip`
3. 将压缩包放入游戏存档的 `datapacks` 文件夹后，进入游戏执行 `/reload` 命令。

请注意，在压缩时不要包括 `mapper/GlobalShop_v3` 文件夹，否则游戏无法识别到数据包。换句话说，你应该选择所有 `mapper/GlobalShop_v3` 文件夹中的子文件和子文件夹进行压缩。

Q：为什么本项目要运行脚本来生成数据包？
1. 映射函数文件，缩短函数路径长度。因为函数路径太长会导致玩家在聊天栏输入 `/function` 命令时弹出的显示框过大而且有显示错误。脚本只映射 `global_shop` 命名空间，但不会映射 `functions/test` 文件夹和 `functions/settings` 文件夹。对于其他命名空间的文件则会原封不动地复制。被映射的函数会重命名为 `mapper/<数字>.mcfunction`；
2. 映射的函数文件会去掉注释，去掉前导空格，去掉空行；

### 5 ) 如何添加一种新的翻译文本？
感谢你为本数据包添加新的翻译文本，请你将翻译好的文本提交给作者，作者审查后会合并到代码中。审查是为了防止出现有攻击性、歧视性等可能导致不良影响的翻译。

你的名字会被写入翻译函数文件的翻译者信息中。

请查看项目 github 地址，确保你想要翻译的语言还没有翻译完成。

（此处的语言亦指翻译文本，例如中文的繁体字并不是一种新的语言，请不要误会）

进入项目 `translation` 文件夹，它存储本项目的翻译工作。请按照以下步骤翻译：
1. 你会看到 `new_language.xlsx`，它是一个翻译模板，把它复制到同目录下的 `languages` 文件夹。然后进入 `languages` 文件夹，将复制的翻译模板文件改名为新的语言的缩写（例如翻译为英文，则改名为 `en_us.xlsx`）。
2. 打开重命名后的翻译模板，你会看到 3 个工作表，分别是 `author_info`、`translation` 和 `common`；
3. `author_info` 工作表填写作者名字和联系方式，联系方式可不写；
4. 切换到 `translation` 工作表，棕色行说明可以引用自一个通用翻译键，不需要翻译；如果在 `en_us` 列和 `zh_cn` 列没有文本则说明这是个空行，只起到分隔作用，也无需翻译；如果是黑色行则需要翻译，请在 `H` 列（`new_language`）填写翻译文本。在 `D` 列和 `E` 列还有描述或截图帮助你理解文本在游戏中的显示位置；
5. 切换到 `common` 工作表来翻译通用翻译键，相同的文本被合并为通用翻译键来减少翻译工作量。请在 `E` 列（`new_language`）进行翻译；
6. 翻译完成后，请与我取得联系，我会尽快将你的努力应用到项目的最新版本^_^

请注意：
1. 译文中不要有单引号或双引号，否则可能导致拼接的命令有语法错误；
2. 无需担心译文之后是一个数字时需要在末尾添加空格，因为我在代码中已经添加了空格，所以所有译文的末尾都不需要空格。

如果你的新语言 `xxx` 仅供自己使用，并不想提供给项目，请按照以下方法自行生成语言函数文件：
1. 按以上要求翻译好 `<xxx>.xlsx`；
2. 运行 `translation/gen_translation_mcf.py`，输入 `xxx`
3. 现在你会看到 `xxx` 文件夹，里面有 `init.mcfunction`；
4. 进入项目的 `data/global_shop/functions/text` 文件夹，将上个步骤生成的 `xxx` 文件夹放到这里，就像 `zh_cn` 和 `en_us` 文件夹那样；
5. 你已成功添加自己的语言，请在游戏中切换并使用它；

### 6 ) 这个数据包能不能兼容插件和模组端？例如 fabric、forge？
本数据包的制作和测试均在原版端进行，作者无法保证它在非原版端的环境下能够稳定运行。如果你确实有这个需求，请自行测试，测试指导在项目 `test` 文件夹中。

### 7 ) 我发现了 bug，或者想提交建议？
直接在本项目 github 上提 issue
也可以在上面提供的联系方式中直接联系我，十分感谢^_^

## 使用体验 Q&A
### 1 ) 我添加了全球商店，也执行了 `/reload`，为什么打开不了商店，也没有输出提示信息？
全球商店首次加载后，需要管理员启动运行，但一些信息只会向管理员发送。
你需要先成为全球商店的管理员，然后再次执行 `/reload`，就能看到全球商店发送的信息了，请根据提示启动商店运行。

### 2 ) 我如何成为全球商店的管理员？
你需要拥有服务器的管理员权限，然后执行以下任意一个命令来成为全球商店的管理员：
- `/function global_shop:settings/get_permission`
- `/scoreboard players operation <玩家名> glbs_permission = Permission::ADMIN glbs_common`

### 3 ) 我剥夺了一位服务器管理员的管理员权限，但是他依旧是商店的管理员，要如何去除某位玩家的商店管理员权限？
执行 `/scoreboard players operation <玩家名> glbs_permission = Permission::PLAYER glbs_common` 来去除某位玩家的商店管理员权限。

### 4 ) 首次使用全球商店的语言是英文的，如何改成自己想要的语言？
全球商店内置了 `en_us` 和 `zh_cn` 两种语言，默认使用 `en_us`。要更改语言，请从主界面进入控制面板，然后进入更多设置，点击修改语言选项，按照提示修改语言。

### 5 ) 为什么存钱、回收物品和领取收入时，金钱太多会提示操作失败？
这三种操作都会使玩家的金钱增加。记分板在计算机中使用 int 类型存储，最大值为 2147483647。如果两个 int 的值相加后大于这个最大值，它会变成负数，即整数回绕。例如 2147483647 + 1 = -2147483648。所以为了保护玩家的钱，当玩家持有的金钱太多时就不允许进行金钱增加的操作。

### 6 ) 为什么我尝试上架物品，但是提示我“商店的物品数量达到上限”？
因为每位玩家 **售货架上的物品数量 + 退还的物品数量** 是有限的，默认是 54。这是为了防止有玩家向商店塞入大量物品。
你需要先下架或取回一些退还的物品然后才能上架物品。

### 7 ) 为什么数据包提示“全球商店出现错误，部分指令运行异常。”，之后就不运行了？
在 minecraft 的命令系统中，存在“最大连锁执行命令数”的概念，游戏不允许一次连锁执行太多命令。在原版中，这个值默认是 65536。本数据包参考了这个值来约束自身的命令执行数量。只要不修改这个值，本数据包就不会出现命令执行不完的情况。

但是这个值可以用 `/gamerule maxCommandChainLength <?>` 来人为地修改，如果改得太低，就可能会出现此错误。

此错误是无法挽回的，因为命令没有执行完，数据包存储的物品数据就可能出现损坏。为了安全起见，数据包会停止运行。

<font color=lightgreen>修复此错误的正确方法是：</font>将最大连锁执行命令数改为至少 65536，然后卸载全球商店，并重新安装。因为抹除所有的数据才能回归安全状态。

<font color=red>如果你不顾数据损坏，执意要启动</font>，可以使用 `/function global_shop:settings/reinit_anyway` 强制重新初始化。商店会尝试启动，但由于数据可能是损坏的，商店运行时随时可能出现意料之外的问题，请谨慎使用。建议只在出现此意外状况后，开放商店让玩家取回自己的物品，玩家取回物品后，请继续按照上述“修复此错误的正确方法”卸载重装数据包。

### 8 ) 为什么在浏览商店物品的时候，模组的物品信息显示不全？
商店的悬浮物品信息框并非调用原版 api 显示，而是本数据包根据物品 nbt 数据自行解析的，因此无法兼容模组的物品使用模组重写后的物品信息框的情况。

## 技术性 Q&A
### 为什么数据包的多语言是自己实现的？用资源包不是更好吗？
全球商店数据包的目的是为所有玩家提供方便交易的平台，也为服务器统一出售和回收物品提供便利，它仅需要安装在服务端。

一切都是为了方便，作者无法接受服务器的玩家使用全球商店还需要额外安装资源包，因此采取这样的方法在数据包层面实现多语言。

### 多语言是对全服务器生效的，为什么不做成玩家个人设置？
开发时考虑了这一点，但是修改语言时需要输入文本（而不是用 trigger 触发修改分数），普通权限的玩家难以输入文本。

另外，数据包一般在小型服务器运行，玩家大多来自同个国家，统一使用一种语言的影响不大。

然而它确实是个缺陷，后续版本将会考虑将修改粒度缩小到玩家个人设置。