关键函数、关键实现的伪代码和中级高级语言表示

---

#### 4.2.1.1 类型和常量定义
```c++
// 数据类型定义（类图中不体现的在此处说明）

// 错误码定义
using ErrCode = int;
constexpr ErrCode SUCCESS = 0; // 成功
constexpr ErrCode INVALID_ENV = -1; // 错误的执行环境（执行实体、执行位置、
                                    // 执行维度等不正确）
constexpr ErrCode NO_PERMISSION = -2; // 无权限
constexpr ErrCode OTHER_ERROR = -10000; // 其他错误

// 全局变量
int g_time = 0; // 时间，单位 s
int g_registeredPlayerNum = 0; // 当前注册的玩家数
int g_nextUid = 1; // 下一个注册的玩家得到的 UID（0 用于表示玩家未注册，
                  // 适应 scoreboard players get 无分数返回 0 的特性
int g_nextPlayerShopId = 1; // 下一个玩家出售物品得到的 id_
int g_nextSellShopId = 1; // 下一个出售商店物品得到的 id_
int g_nextRecycleShopId = 1; // 下一个回收商店物品得到的 id_

// 常量定义
constexpr int SELL_ITEM_COOLING_TIME = 10; // 玩家上架物品冷却时间，单位 s
constexpr int SELL_ITEM_EFFECTIVE_TIME = 259200; // 玩家上架物品有效时间，超过该时间导致物品回退，单位 s（3600 * 24 * 3）
constexpr int MAX_REGIST_PLAYER_NUM = 1000; // 最大注册玩家数
constexpr int MAX_CONNECT_NUM = 8; // 允许同时使用商店的最大玩家数量
constexpr int PLAYER_MAX_SELL_AND_RETURN_NUM = 54; // 每位玩家最大上架物品数量
constexpr int PLAYER_MAX_BOUGHT_NUM = 27; // 每位玩家最大历史购买物品数量
constexpr int PLAYER_MAX_SOLD_NUM = 27; // 每位玩家最大历史出售物品数量
```

StoreManager 关键函数实现：
```c++
// 空项（其他控件定义见 MenuPreset 类的初始化函数，控件 id 在 Shop#init 当作记分板常量进行初始化）
static const ItemData CONTROL_NULL_ITEM = {id:"minecraft:black_stained_glass_pane",Count:1b,tag:{id:CONTROL_NULL_ITEM}}

class StoreManager {
public:
   static void GetPlayerShopListPage(int beginIndex, List<ItemData>& g_itemsToDisplay)
   {
      g_itemsToDisplay.clear();

      // 假设列表长度为 x，也就是物品下标范围是 0 到 x - 1，
      // 那么对称轴就是 (0 + (x - 1)) / 2 记为 a
      // beginIndex_ 到对称轴的距离为 a - beginIndex_
      // 那么对称点就应该是 beginIndex_ + 2 * (a - beginIndex_)
      // 将 a 代入可得 beginIndex_' = -b + x - 1
      int x = g_playerShopList.size();
      beginIndex = -beginIndex + x - 1;

      for(int i = 0; i < 27; ++i) {// 1()
         GetPlayerShopListElemByIndexAndAppend(beginIndex - i, g_itemsToDisplay);
      }
   }

private:
   static void GetPlayerShopListElemByIndexAndAppend(int index, List<ItemData>& g_itemsToDisplay)
   {
      if(index < 0) {
         g_itemsToDisplay.append(NULL_ITEM);
         return;
      }
      if(g_playerShopList.size() - 1 < index) {
         g_itemsToDisplay.append(NULL_ITEM);
         return;
      }
      g_itemsToDisplay.append(g_playerShopList[index]);// 1()
   }

   static void RotateAndUpdateItems(int g_columnDiff)
   {
      // 记 g_columnDiff 为 x
      // 当 x < 0 时，玩家向左旋转
         // 序号位于 [0, min(27, 3 * -x)) 的物品需要生成
         // 序号位于 [min(27, 3 * -x), 27 - max(0, 3 * -x)) 的物品需要更新
         // 序号位于 [27 - max(0, 3 * -x), 27) 的物品需要删除
      // 当 x > 0 时，玩家向右旋转
         // 序号位于 [0, min(27, 3 * x)) 的物品需要删除
         // 序号位于 [min(27, 3 * x), 27 - max(0, 3 * x)) 的物品需要更新
         // 序号位于 [27 - max(0, 3 * x), 27) 的物品需要生成

      // 更新 Menu 状态...（旋转、beginIndex_ 等）

      // 取数据...

      // 转动更新逻辑
      int orderDiff = 3 * abs(g_columnDiff);
      int targetOrder = GetViewedItemOrder();
      if(g_columnDiff < 0) {// 1()
         // 必须先调用 RangeUpdateAndDelete 删除、更新物品
         // 否则等下面生成完，会有重复 order 的实体
         DisplayManager::RangeUpdateAndDelete(g_itemsToDisplay, orderDiff);
         
         int begin = min(27, orderDiff);
         execute rotated as @s run -> DisplayManager::RangeSummon(g_itemsToDisplay, 0, begin);// 上面旋转了，切记
         OnItemSummon();
      } else {
         // -
         DisplayManager::RangeUpdateAndDelete(g_itemsToDisplay, -orderDiff);
         
         int end = 27 - max(0, orderDiff);
         execute rotated as @s run -> DisplayManager::RangeSummon(g_itemsToDisplay, end, 27);// 上面旋转了，切记
         OnItemSummon();
      }
   }
}
```

DisplayManager 关键函数实现：
```c++
class DisplayManager {
   static void RangeSummon(List<ItemData>& g_itemsToDisplay, int begin, int end)
   {
      while(begin < end) {
         SummonSingleItem(g_itemsToDisplay[begin]);
         ++begin;
      }
   }

   static void RangeUpdateAndDelete(List<ItemData>& g_itemsToDisplay, int orderDiff, int targetOrder)
   {
      execute 所有物品 run {// 1()
         @s.order += orderDiff;
         if(@s.order < 0 || @s.order > 26) {
            Kill();
            return;
         }

         // 如果没有被看，去掉高亮（@s.order_ != targetOrder 就需要去掉高亮）

         if((data get @s item.tag.global_shop.id) !=
            (data get storage g_itemsToDisplay[@s.order].tag.global_shop.id))
         {// macro_if.mcfunction -> 2/0()~26()
            data modify @s item.id set from g_itemsToDisplay[@s.order].id;
            data modify @s item.Count set from g_itemsToDisplay[@s.order].Count;
            data modify @s item.tag.global_shop.id set from g_itemsToDisplay[@s.order].tag.global_shop.id;
            OnItemUpdate();
         }
      }
   }
}
```