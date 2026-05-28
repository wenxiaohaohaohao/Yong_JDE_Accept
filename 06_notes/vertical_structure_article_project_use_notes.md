# Wang 等《A Model of China’s Economic Vertical Structure》对当前项目的用途

## 0. 一句话判断

这篇文章对当前项目非常有用，而且比上一篇“上游国有企业对下游民营企业生产率”的文章更接近我们的理论和政策主线。

但它同时构成竞争压力。它已经系统讨论了：

```text
中国 vertical structure
+ 上游 SOE monopoly / upstream markup
+ credit subsidy as second-best policy
+ welfare and reform sequencing
```

因此，我们不能把当前项目写成“上游垄断导致错配，信贷补贴具有二阶最优含义”。这个地盘已经被 Wang 等文章占据。我们应当明确转向：

```text
下游 input-demand wedge / buyer-side friction
→ 通过 IO 网络映射为上游 exposure
→ 高 exposure 上游企业面临现金流、账期、融资和投资压力
→ 政策性信贷是否回应并缓解这种压力
```

也就是说：

> Wang 等研究的是“上游 SOE monopoly + credit subsidy”；我们的项目研究的是“下游采购端 wedge + upstream exposure + credit allocation/effectiveness”。

---

## 1. 这篇文章的核心内容

这篇文章研究中国经济中的 **vertical structure**：

```text
上游关键行业由国有企业主导 / 垄断，
下游行业更多由民营企业竞争。
```

它的基本机制是：

```text
下游民营企业生产率提高 / 出口扩张
→ 下游生产扩张
→ 对上游中间品需求上升
→ 上游国企垄断利润提高
```

文章用这一机制解释 2002-2007 年国企利润改善、结构转型、资源错配和信贷补贴的福利含义。

最重要的政策命题是：

> 上游国企垄断会降低 GDP 和福利，但在垄断尚未消除时，给上游国企的信贷补贴可能部分缓解上游供给不足。因此，只取消补贴而不打破上游垄断，可能降低福利。

这正是二阶最优逻辑：

```text
第一扭曲：上游垄断造成供给不足；
第二扭曲：信贷补贴本身扭曲资本配置；
但在第一扭曲存在时，第二个扭曲可能部分抵消第一扭曲。
```

---

## 2. 对当前项目最有用的地方

### 2.1 提供“信贷补贴可能具有二阶最优含义”的理论参照

Wang 等文章的 Proposition 4 说明，在存在上游 SOE 垄断时，存在一个唯一最优资本补贴率：

```text
tau* = 1 - 1/mu
```

其含义是：最优信贷补贴正好抵消上游垄断 markup 的供给不足效应。

定量结果也很清楚：

| 政策反事实 | GDP 变化 | 福利变化 |
|---|---:|---:|
| Status quo | 0.00% | 0.00% |
| Remove subsidy | -1.15% | -1.15% |
| Remove markup | 5.52% | 4.03% |
| First best | 7.58% | 5.78% |

这说明：

```text
单独取消补贴会使 GDP 下降，
因为补贴在一定程度上缓解了上游垄断造成的 under-supply。
```

这对我们很关键。我们也想讲：

```text
政策性信贷不是简单扭曲；
在某些网络摩擦存在时，可能具有二阶最优含义。
```

但区别必须非常清楚：

| Wang 等文章 | 我们项目 |
|---|---|
| 上游 SOE 垄断导致上游供给不足 | 下游 input-demand wedge / buyer-side friction 通过网络造成上游压力 |
| 信贷补贴给上游 SOE，可部分抵消垄断供给不足 | 信贷支持流向 high-exposure upstream suppliers，可能缓解现金流、账期和投资压力 |
| 二阶最优来自 upstream output markup | 二阶最优来自 downstream input-demand wedge 向上游传导 |
| 政策对象主要是上游国企 | 政策对象应是暴露于高-wedge 下游的上游企业，不限于国企 |

因此，我们可以借鉴 second-best policy logic，但不能复制它的具体机制。

---

### 2.2 提供“下游冲击传导到上游”的实证模板

文章第 2.5 节非常有用。它直接检验：

```text
下游 TFP 增长 / 下游出口关税下降
→ 上游企业利润增长
```

它构造的 downstream TFP shock 是：

```text
DeltaTFP_s,t = Sum_j omega_s,j × Deltalog(TFP_j,t)
```

其中：

```text
omega_s,j = IO_s,j / Sum_k IO_s,k
```

这个权重表示：

```text
上游行业 s 的产出有多大比例卖给下游行业 j。
```

这几乎就是我们要用的网络映射方法。区别是：

| Wang 等文章 | 我们项目 |
|---|---|
| downstream shock = downstream TFP growth / export tariff shock | downstream shock = input-demand wedge / buyer-power-related friction |
| upstream outcome = profit growth | upstream outcome = cash flow、AR days、investment、financing cost、survival |
| 研究下游扩张如何提高上游利润 | 研究下游采购端 wedge 如何压低上游现金流和投资 |
| 机制是正向需求扩张 | 机制是买方势力 / payment friction / under-demand |

因此，这篇文章直接证明：

> 用 IO 表把下游变量映射到上游企业，是可发表、可接受、且与中国数据高度匹配的做法。

---

### 2.3 提醒我们必须控制 upstreamness

文章使用 Antras et al. 的 upstreamness 方法，把行业分成 upstream、midstream 和 downstream 三组，并证明：

- 国企在上游更集中；
- 上游行业利润率更高；
- 上游行业 HHI 更高；
- 上游行业出口暴露更低；
- 中国 largest firms 更集中在上游且多为 SOE。

这对我们非常重要。我们的 high-exposure upstream sectors 可能本身就是：

```text
更上游、SOE 占比更高、HHI 更高、markup 更高、出口暴露更低的行业。
```

所以在我们的主回归中，必须控制：

```text
upstreamness
upstream SOE share
upstream HHI
upstream markup
upstream profit margin
upstream capital intensity
upstream export exposure
province-year FE
```

否则审稿人会说：

> 你估计出来的 upstream exposure 只是中国 vertical structure 本身的 proxy，而不是 downstream input-demand wedge 的传导效应。

---

### 2.4 提醒我们不要把信贷补贴简单说成“好”或“坏”

Wang 等文章的政策结论不是：

```text
信贷补贴好。
```

也不是：

```text
信贷补贴坏。
```

而是：

```text
上游垄断是坏的；
信贷补贴本身也是扭曲；
但在上游垄断存在时，适度信贷补贴可以缓解供给不足。
```

这对我们项目非常有启发。我们的政策 trade-off 应写成：

```text
政策性信贷 / 供应链金融
可能缓解 high-exposure upstream suppliers 的融资与投资压力；
但也可能延续长账期、买方依赖或低效率供应商存活。
```

所以，政策效果应写成条件性判断：

> 政策是否有效，取决于它是否针对了正确的网络摩擦，以及是否真正改善了上游企业的融资、投资和生存表现。

---

## 3. 和上一篇刘青等文章的相似之处

上一篇刘青等文章研究的是：

```text
上游国有企业存在度
→ 通过中间品市场、政策扶持、契约保障、集中度和信贷挤出
→ 影响下游民营企业 TFP
```

Wang 等文章研究的是：

```text
上游 SOE dominance / monopoly
+ 下游 private competition
+ downstream expansion
→ upstream SOE profitability
+ credit subsidy welfare implications
```

两篇文章有共同背景：

```text
中国 vertical structure
= 上游国企 / 上游垄断 / 上游政策扶持
+ 下游民企 / 下游竞争
+ 投入产出网络传导
```

相似点如下：

| 维度 | Wang 等 JPubE 文章 | 刘青等文章 |
|---|---|---|
| 中国背景 | 上游 SOE dominance + 下游 private competition | 上游国企存在度影响下游民企 |
| 网络方向 | 下游扩张提高上游 SOE 利润；上游垄断影响整体经济 | 上游国企影响下游民企 TFP |
| 政策变量 | 上游 SOE credit subsidy | 上游国企补贴、税收优惠、利率优惠 |
| 生产网络 | 使用 IO 表和 upstreamness | 使用 IO 表构造上游国企存在度 |
| 正负机制 | 垄断有害，补贴可部分纠偏 | 政策扶持和契约保障为正，集中度和资源挤出为负 |
| 政策含义 | 改革顺序重要，不能只取消补贴 | 发挥上游国企正向作用，规避负向影响 |

两篇文章的层次不同：

```text
Wang 等文章 = 理论、定量、福利、政策改革顺序；
刘青等文章 = 企业层面经验检验、中国 IO 网络实证写法。
```

对我们来说：

```text
Wang 等文章 = 理论与政策逻辑参照；
刘青等文章 = 中国 IO 网络实证写法参照。
```

---

## 4. 和我们项目的根本区别

### 4.1 核心摩擦不同

Wang 等文章的核心摩擦是：

```text
upstream SOE monopoly / upstream output markup
```

我们的核心摩擦是：

```text
downstream input-demand wedge / buyer-side friction
```

对应地：

| 文章 | 扭曲起点 | 网络传导方向 |
|---|---|---|
| Wang 等 | 上游垄断导致上游供给不足 | 上游影响下游和整体经济 |
| 我们 | 下游采购端 wedge 导致上游压力 | 下游通过 IO 销售关系压到上游 |

这是最重要的区别。

---

### 4.2 政策对象不同

Wang 等文章的政策对象主要是：

```text
上游 SOE
```

我们的政策对象应是：

```text
暴露于高-wedge 下游的上游供应商
```

这些供应商不应限于国企，可以包括：

- 民营企业；
- 国有企业；
- 中小企业；
- 专精特新企业；
- 基础零部件企业；
- 基础材料供应商；
- 一般制造业上游供应商。

这可以避免我们的文章被吸进“上游 SOE 补贴是否合理”的旧问题中。

---

### 4.3 结果变量不同

Wang 等文章关注：

```text
SOE profit
industrial employment
GDP
welfare
structural change
```

我们的第一阶段应关注：

```text
应收账款 / 销售
应收账款周转天数
经营现金流
财务费用
投资率
R&D
生存率
zombie ratio
credit subsidy
```

因此，我们更像一篇企业层面的 production-network policy paper，而不是宏观结构转型模型。

---

### 4.4 国际贸易位置不同

Wang 等文章把 WTO 后下游出口扩张作为一个重要机制：

```text
WTO / trade liberalization
→ downstream export expansion
→ demand for upstream SOE inputs rises
→ upstream SOE profits rise
```

我们当前项目已经决定不引入国际贸易部分，因此不能借这个故事。我们要保持：

```text
domestic production network
domestic input-demand wedge
domestic credit policy
```

这可以避免和原来的 foreign-input markdown 项目混在一起。

---

## 5. 对当前项目的具体修改建议

### 修改 1：把 Wang 等文章放入核心相关文献

它应放在 literature review 的核心位置，和 Liu (2019)、Morlacco、Jones 并列。

建议定位为：

> Wang 等从中国 vertical structure 出发，说明上游国企垄断与信贷补贴之间存在二阶最优关系：在上游垄断尚未消除时，信贷补贴可能部分缓解上游供给不足。本文借鉴其“垂直结构-信贷政策-福利权衡”的逻辑，但研究的是另一种摩擦：下游采购端 input-demand wedge 如何通过 IO 网络造成上游压力，以及政策性信贷是否回应并缓解这种压力。

---

### 修改 2：直接学习它的 downstream-shock mapping

Wang 等文章的映射是：

```text
DownstreamShock_s,t = Sum_j omega_s,j × Shock_j,t
```

我们可以使用：

```text
Exposure_u,t = Sum_d omega_u,d × (psi^X_d,t - 1)
```

其中：

```text
omega_u,d = IO_u,d / Sum_d' IO_u,d'
```

含义是：

```text
上游行业 u 的产出有多大比例卖给下游行业 d。
```

这应成为我们构造 upstream exposure 的基准公式。

---

### 修改 3：主回归加入 upstreamness / SOE / monopoly controls

Table 4 和 Table 5 中建议加入：

```text
upstreamness
upstream SOE share
upstream HHI
upstream markup
upstream profit margin
upstream capital intensity
upstream export exposure
province-year FE
```

目的：证明我们的 exposure 不是中国 vertical structure 本身、SOE dominance 或 upstream monopoly 的替代变量。

---

### 修改 4：政策变量优先用 credit subsidy，而不是 SCF

Wang 等文章强化了一个判断：当前项目主政策变量应是：

```text
credit_subsidy_i,t
```

而不是 supply-chain finance。

建议变量层级保持：

| 层级 | 变量 | 地位 |
|---|---|---|
| 主政策变量 | `credit_subsidy_i,t` | baseline |
| 辅助政策变量 | `policy_support_i,u,t` | secondary |
| 候选扩展变量 | `scf_access_i,t` | optional |
| 最强但未确认变量 | `scf_amount_i,t` | optional if data available |

这可以保持文章是：

```text
credit policy in production networks
```

而不是：

```text
supply-chain finance paper
```

---

### 修改 5：借鉴改革顺序和 policy trade-off 叙事

Wang 等文章的关键政策含义是：

```text
不能在不消除上游垄断的情况下单独取消补贴，
否则可能降低福利。
```

我们的对应表达可以是：

```text
不能在不削弱下游 payment friction / buyer-side wedge 的情况下，
只依赖供应链金融或信贷支持缓解上游融资压力；
否则政策可能缓解短期流动性问题，
但延续长账期和买方依赖。
```

这样我们也有自己的政策 trade-off。

---

## 6. 这篇文章对我们是否构成竞争威胁？

是的，有竞争压力。

因为它已经做了：

```text
中国 vertical structure
+ upstream monopoly / markup
+ credit subsidy as second-best policy
+ quantitative welfare
```

所以我们不能写成：

```text
上游垄断导致错配，信贷补贴有二阶最优。
```

我们必须写成：

```text
下游采购端 wedge 通过网络造成上游压力，
信贷政策是否回应并缓解这种压力。
```

一句话区分：

> Wang 等：上游垄断造成供给不足，补贴上游可部分纠偏。
> 我们：下游采购端 wedge 造成上游压力，信贷政策是否支持并改善高暴露上游。

这个区别必须贯穿题目、摘要、引言和文献综述。

---

## 7. 读完这篇文章后，当前项目标题应如何调整？

不建议使用以下词作为主标题中心：

```text
Vertical Structure
Upstream SOE
Credit Subsidy and Welfare
SOE Monopoly
```

这些都太接近 Wang 等文章。

更稳的标题仍然是：

```text
Input-Demand Wedges, Upstream Exposure, and Credit Allocation in Domestic Production Networks
```

或者：

```text
Downstream Buyer Power, Upstream Exposure, and Credit Allocation in Production Networks
```

副标题可以是：

```text
Evidence from Chinese Industrial Firms
```

不建议写成：

```text
Credit Subsidies in China's Vertical Structure
```

这会直接撞车。

---

## 8. 最终定位

这篇文章应该放进我们的核心 literature notes，并且在项目蓝图中专门加一节：

```text
Relation to China's Vertical Structure Literature
```

这一节的目的不是说明我们和 Wang 等文章一样，而是说明：

> 我们借鉴它的 vertical-structure 和 second-best credit-policy logic，但把摩擦来源从 upstream monopoly 转向 downstream buyer-side input-demand wedge。

最终项目定位应是：

```text
Wang 等文章：上游 SOE monopoly + credit subsidy。
刘青等文章：上游国企如何影响下游民企，是中国 IO 实证写法参考。
我们的文章：下游采购端 wedge 如何通过网络造成上游压力，以及信贷政策是否回应并缓解这种压力。
```

---

## 9. 可直接写入项目 notes 的短版本

```text
Wang et al. (2026) is a core reference for the project, but also a paper from which we must clearly differentiate. It develops a vertical-structure model of China in which upstream industries are dominated by SOEs while downstream industries are liberalized and privately competitive. The key mechanism is that downstream productivity growth and export expansion raise demand for upstream intermediate goods, increasing upstream SOE profits. The paper also shows that, under upstream SOE monopoly, credit subsidies to SOEs may be second-best because they partially offset upstream under-supply; removing credit subsidies without eliminating monopoly power can lower welfare.

Our project borrows the vertical-structure logic, the IO-based downstream-to-upstream mapping, and the second-best interpretation of credit policy. However, the friction is different. Wang et al. study upstream SOE monopoly and credit subsidies to upstream SOEs. We study downstream input-demand wedges / buyer-side frictions, map them into upstream exposure through IO linkages, and examine whether observed credit allocation and firm outcomes respond to this exposure. The policy object is not upstream SOEs per se, but upstream suppliers exposed to high-wedge downstream buyers. Therefore, our paper should be positioned as an empirical production-network policy paper on downstream buyer-side wedges and upstream credit allocation, not as another paper on China's vertical structure or SOE credit subsidies.
```
