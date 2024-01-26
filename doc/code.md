关键函数、关键实现的伪代码和中级高级语言表示

---

#### 4.2.1.1 类型和常量定义
```c++
namespace Mini_Ye {
namespace global_shop {
// 数据类型定义


// 错误码定义
using ErrCode = int;

constexpr ErrCode SUCCESS = 0; // 成功

constexpr ErrCode INVALID_ENV = -1; // 错误的执行环境（执行实体、执行位置、执行维度等不正确）
constexpr ErrCode NO_PERMISSION = -2; // 无权限

constexpr ErrCode OTHER_ERROR = -10000; // 其他错误

// 常量定义
constexpr int MAX_CONNECT_PLAYERS = 8; // 允许同时使用商店的最大玩家数量
constexpr int PLAYER_MAX_SELLING_ITEMS = 64; // 每位玩家最大上架物品数量
constexpr int TOTAL_MAX_SELLING_ITEMS = 64 * 128; // 所有玩家上架物品数量最大总和
constexpr int PLAYER_MAX_BOUGHT_ITEMS = 32; // 每位玩家最大历史购买物品数量
constexpr int TOTAL_MAX_BOUGHT_ITEMS = 32 * 128; // 所有玩家历史购买物品数量最大总和
constexpr int PLAYER_MAX_SOLD_ITEMS = 32; // 每位玩家最大历史出售物品数量
constexpr int TOTAL_MAX_SOLD_ITEMS = 32 * 128; // 所有玩家历史出售物品数量最大总和

}// namespace global_shop
}// namespace Mini_Ye
```

```c++
static const ItemData CONTROL_NULL_ITEM = {id:"minecraft:black_stained_glass_pane",Count:1b}

class StoreManager {
public:
   static ErrCode GetPlayerShopListPage(int beginIndex, List<ItemData>& g_itemsToDisplay)
   {
      g_itemsToDisplay.clear();

      for(int i = 0; i < 27; ++i) {// 1()
         GetPlayerShopListElemByIndexAndAppend(beginIndex + i, g_itemsToDisplay);
      }
   }

private:
   static ErrCode GetPlayerShopListElemByIndexAndAppend(int index, List<ItemData>& g_itemsToDisplay)
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

   static ErrCode RotateAndUpdateItems(int g_columnDiff)
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

      // 更新 Menu 状态...

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

class DisplayManager {
   static ErrCode RangeSummon(List<ItemData>& g_itemsToDisplay, int begin, int end)
   {
      while(begin < end) {
         SummonSingleItem(g_itemsToDisplay[begin]);
         ++begin;
      }
   }

   static ErrCode RangeUpdateAndDelete(List<ItemData>& g_itemsToDisplay, int orderDiff, int targetOrder)
   {
      execute 所有物品 run {// 1()
         @s.order += orderDiff;
         if(@s.order < 0 || @s.order > 26) {
            Kill();
            return;
         }

         // 如果没有被看，去掉高亮

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