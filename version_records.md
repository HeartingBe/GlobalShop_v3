版本记录

---
# Major Version

The major version indicates the version of minecraft to which it works on.

| GlobalShop version | Minecraft Version | branch |
| ------------------ | ----------------- | ------ |
| v3.0               | 1.20.4            | master |

---
# Version details

THe version details describes the details of all the minor versions under a major version. For the same minecraft version, you should choose the largest minor version. For example, if your minecraft version is 1.20.4, you should not choose v3.0.0, but v3.0.x, where x is the largest.

## v3.0.x for JE 1.20.4

| Subversion | Add / Modify / Fix       | Importance |
| ---------- | ------------------------ | ---------- |
| v3.0.0     | -                        | -          |
| v3.0.1     | 1 Fix                    | Mandatory   |
| v3.0.2     | 2 Add / 1 Modify / 1 Fix | Mandatory   |

### v3.0.1
【修复】历史购买和历史出售数量限制 27 个数量上限

### v3.0.2
1. 【添加】现在维度变化时会关闭商店，适应即将到来的 1.21 版本中允许骑乘状态的实体使用传送门的特性；
2. 【添加】还原了设计文档中的两张关于商店单元和物品展示实体角度的图片。
3. 【修改】去除 StoreManager#GetPlayerSellingListElemById 函数（与 StoreManager#GetPlayerSellingListElemByUidAndId 重复）；
4. 【修复】检查商店位置改变应该在处理打开的商店的主要逻辑之前，不能糅在打开的商店的主要逻辑中，否则会因 @e 选择顺序不同低概率让距离过近的玩家也能得到一次处理。