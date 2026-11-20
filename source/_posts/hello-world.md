---
title: 博客开张
date: 2026-11-18 12:00:00
tags:
  - 随笔
categories: 随笔
---

站点用 Hexo + Butterfly 搭起来了，托管计划走 GitHub Pages。这篇用来验证公式和代码块渲染是否正常。

## 行内公式

前缀和查询区间 $[l, r]$ 的和，单次复杂度 $O(1)$，预处理 $O(n)$。

## 块级公式

线段树懒标记下推时的区间和更新：

$$
\sum_{i=l}^{r} a_i \;=\; \frac{(l+r)(r-l+1)}{2}
$$

## 代码块

```python
def build(node, l, r):
    if l == r:
        tree[node] = a[l]
        return
    mid = (l + r) >> 1
    build(node << 1, l, mid)
    build(node << 1 | 1, mid + 1, r)
    tree[node] = tree[node << 1] + tree[node << 1 | 1]
```

如果上面三块都显示正常（公式是排版后的样子、代码有行号和高亮），说明环境没问题，可以开始写题解了。
