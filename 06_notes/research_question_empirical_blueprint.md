# Research Question + Empirical Blueprint

生成日期：2026-05-24

使用模式：`academic-research-suite` / `deep-research` early-stage scoping

使用材料：

- `06_notes/supply_chain_buyer_power_project_summary.pdf`
- `01_literature/main-jie-revision_new.pdf`
- `01_literature/Market_Power_Inputs_2023.pdf`
- `01_literature/JonesAEJM2011.pdf`
- `01_literature/shanghai200.pdf`
- `01_literature/markupsmisallocation.pdf`

说明：本文件是项目初期的研究蓝图，不是论文正文。它的目标是把研究问题、变量、第一批回归和识别风险先固定下来，方便后续写 Stata 代码和论文结构。

## 1. 项目定位

当前最稳妥的项目定位是：

> 中国国内生产网络中，下游行业的 domestic intermediate input-demand wedge 是否压低上游供应商的现金流、投资和扩张；如果存在这种上游压力，优惠信贷或供应链金融是否更多流向这些暴露于高 wedge 下游的上游部门。

这个定位的关键不是直接宣称“估计了国内中间品 markdown”，而是先构造一个可检验的 input-demand wedge，并用 buyer power primitives、账期压力和融资压力验证它是否具有 buyer-power interpretation。

推荐英文题目：

> Buyer Power and Supply-Chain Finance in Domestic Production Networks

推荐中文题目：

> 供应链金融、买方势力与生产网络中的上游错配：来自中国税调数据的证据

## 2. Research Question Brief

### 2.1 主研究问题

**Primary RQ**

在中国制造业生产网络中，暴露于下游 domestic intermediate input-demand wedge 的上游行业和企业，是否表现出更强的现金流、账期和投资压力；优惠信贷或供应链金融支持是否系统性地流向这些高暴露上游部门，并且这种关系是否独立于自身 output markup？

这句话中有三个层次：

1. 下游 wedge 是否能被测度并验证。
2. wedge 是否通过投入产出网络传导到上游压力。
3. 政策支持是否对这种上游暴露度有反应，而不只是对自身 markup 有反应。

### 2.2 FINER 评估

| 维度 | 评分 | 判断 |
|---|---:|---|
| Feasible | 4/5 | 税调数据、投入产出表和现有 Wang 式 credit subsidy 构造可形成第一轮实证。难点是 wedge 测度和 buyer-power interpretation。 |
| Interesting | 5/5 | 问题连接 buyer power、供应链金融、生产网络和工业政策，能解释为什么政策可能支持上游弱链，而不只是补贴高 markup 部门。 |
| Novel | 4/5 | 与 Wang 的 high markup credit subsidy 机制、Morlacco 的 input buyer power 测度和 Jones/Liu 的生产网络机制都有区别。创新取决于 upstream exposure 事实链能否成立。 |
| Ethical | 5/5 | 使用企业行政或财务数据时需做脱敏和安全管理；研究问题本身无明显伦理障碍。 |
| Relevant | 5/5 | 对供应链金融、应收账款融资、补链强链和专精特新政策有直接解释价值。 |
| **平均** | **4.6/5** | 可以作为主线推进，但必须先通过实证事实链验证。 |

### 2.3 备选研究问题

| 编号 | Candidate RQ | FINER 平均 | 判断 |
|---|---|---:|---|
| RQ1 | 政策支持是否不仅流向自身 high-markup sectors，也流向暴露于下游 input-demand wedge 的上游部门？ | 4.6 | 推荐主线。最能区别于 Wang。 |
| RQ2 | 中国国内中间品市场是否存在可用税调数据测度的 input-demand wedge？ | 3.8 | 适合作为第一篇技术性事实或主文 Table 2-3，但单独成文政策含义偏弱。 |
| RQ3 | 供应链金融是否缓解上游供应商的账期、现金流和投资压力？ | 4.0 | 政策含义强，但若没有 wedge/exposure，机制会更像一般融资约束论文。 |
| RQ4 | 下游买方势力是否通过生产网络导致上游错配？ | 4.2 | 经济学问题清楚，但需要更强识别和更可信的 buyer-supplier exposure。 |
| RQ5 | 供应链金融是否是一种网络型二阶最优产业政策？ | 3.6 | 适合作为后续 welfare model 的问题，不适合作为第一阶段实证主问题。 |

### 2.4 Scope Boundaries

**In Scope**

- 中国制造业或工业企业，优先使用税调数据可覆盖年份。
- 企业层面或行业-年份层面的 output markup、credit subsidy、融资压力、应收账款和投资。
- 行业间投入产出表，用于把下游 wedge 映射到上游 exposure。
- 供应链金融、应收账款融资、优惠信贷和弱链补链政策作为制度背景和政策支持结果变量。

**Out of Scope**

- 直接估计企业对企业的国内采购 markdown：当前数据缺少 buyer-supplier 交易价格、数量和合同条件。
- 一开始就做完整结构 welfare model：目前事实链尚未成立。
- 把所有供应链金融政策解释为纠正 markdown：政策文件只能作为 broad motivation，不是机制证明。
- 完整动态 endogenous markup 模型：Peters 更适合作为文献背景，不宜作为当前建模模板。

**关键假设**

- 税调数据中可稳定构造中间投入支出、收入、资本、劳动、财务费用、负债、应收账款和投资。
- 投入产出表可以提供相对稳定的行业间上游-下游权重。
- Wang 式 credit subsidy 构造可以在当前数据中复刻到方向一致。
- input-demand wedge 的解释需要外部验证，不能只依赖公式本身。

## 3. 可证伪机制链

核心机制链：

```text
Downstream input-demand wedge
  -> lower upstream demand / delayed payment / tighter cash flow
  -> upstream stress and weaker investment
  -> network bottleneck or upstream under-supply
  -> supply-chain finance / preferential credit support
```

这个机制必须被拆成五个可证伪事实：

| 步骤 | 命题 | 最低通过标准 |
|---|---|---|
| F1 | 税调数据可复刻 Wang：high-markup sectors 获得更多 credit subsidy。 | 方向与 Wang 一致，变量构造合理。 |
| F2 | 可构造 domestic input-demand wedge，且分布有经济含义。 | 行业异质性明显，不由极端值或机械口径驱动。 |
| F3 | wedge 与 buyer-power primitives 同向。 | 下游集中度、买方规模、账期压力、应收/应付指标与 wedge 关系一致。 |
| F4 | 暴露于高-wedge 下游的上游部门压力更强。 | upstream exposure 预测应收账款、现金流、投资或融资成本。 |
| F5 | 政策支持流向高 exposure 上游部门。 | 控制自身 markup 后，exposure 仍解释 credit subsidy 或供应链金融支持。 |

如果 F3 不成立，不能把 wedge 称为 buyer power。若 F5 不成立，文章应转向“上游压力与网络错配”，而不是“政策支持机制”。

## 4. Methodology Blueprint

### 4.1 研究范式

**Selected**：positivist / quantitative empirical economics。

理由：主问题是可测度变量之间的关系和政策支持流向，核心证据来自企业面板、行业面板和投入产出网络。研究目标不是解释个体叙事，而是建立可重复的统计事实链。

### 4.2 方法

**方法类型**：secondary-data quantitative analysis。

**具体方法**：

- firm-level panel regressions；
- industry-year aggregation；
- production function / revenue function estimation；
- input-output network exposure construction；
- policy-flow regressions；
- robustness and placebo checks。

### 4.3 数据策略

| 数据 | 用途 | 关键变量 |
|---|---|---|
| 税调企业数据 | 构造 markup、credit subsidy、融资压力、投资和应收账款 | revenue、COGS、中间投入、capital、labor、debt、financial expense、interest expense、AR/AP、investment |
| 中国投入产出表 | 构造上游暴露度 | 行业间流量、use table、direct requirement matrix |
| 行业集中度或企业规模分布 | 验证 buyer-power interpretation | downstream HHI、top-k sales share、large buyer share |
| 政策时间线 | 解释制度背景和可能异质性 | 2016-2017 应收账款融资与供应链金融政策、2020 款项支付条例 |
| 文献与政策文本 | 确定术语边界 | buyer power、input markdown、weak links、credit subsidy |

### 4.4 分析层级

第一轮建议同时保留两套层级：

| 层级 | 用途 | 优点 | 风险 |
|---|---|---|---|
| firm-year | credit subsidy、融资压力、投资、账款压力 | 样本量大，可控制企业特征 | exposure 主要来自行业层面，标准误需聚类 |
| industry-year | wedge、upstream exposure、network stress | 与投入产出表匹配自然 | 样本量小，识别依赖行业时间变化 |

推荐做法：wedge 和 exposure 在 industry-year 层面构造，stress 和 subsidy 同时做 firm-level 与 industry-level 版本。主表用 firm-level，附录报告 industry-level 聚合结果。

## 5. 变量表

| 变量 | 层级 | 定义草案 | 数据来源 | 主要用途 | 风险 |
|---|---|---|---|---|---|
| `markup_i_t` / `markup_s_t` | firm-year / sector-year | output markup，按 Wang 或 De Loecker-Warzynski 思路估计并聚合 | 税调 | 复刻 Wang；作为控制变量 | 生产函数估计敏感，行业聚合口径影响大 |
| `credit_subsidy_i_t` | firm-year | `1 - effective_interest_rate / required_rate`，或基于财务费用和债务的替代口径 | 税调 | 政策支持结果变量 | 税调口径可能粗，基准利率选择影响结果 |
| `eir_i_t` | firm-year | 财务费用或利息支出除以有息负债 | 税调 | credit subsidy 构造 | 债务存量和财务费用匹配问题 |
| `input_share_i_t` | firm-year | 中间投入支出 / 收入 | 税调 | wedge 分母 | 中间投入口径需明确 |
| `theta_x_i_t` | firm-year | 中间投入对收入的 revenue elasticity | 税调 + 估计 | wedge 分子 | revenue function 估计强依赖函数形式 |
| `input_demand_wedge_i_t` | firm-year | `theta_x_i_t / input_share_i_t` | 税调 + 估计 | 核心下游 wedge | 不可直接称为纯 markdown |
| `input_demand_wedge_d_t` | downstream industry-year | firm-level wedge 的行业聚合 | 税调 | 构造 exposure | 聚合权重需固定 |
| `downstream_concentration_d_t` | industry-year | HHI、top-4 share、top-10 share | 税调 | buyer-power validation | 行业内市场定义可能粗 |
| `buyer_size_d_t` | industry-year | 平均买方规模、top buyers sales share | 税调 | buyer-power validation | 行业层面不是真实交易关系 |
| `supplier_fragmentation_u_t` | industry-year | 上游行业企业数、sales dispersion、HHI inverse | 税调 | buyer-power validation / heterogeneity | 需要与 IO 上游行业匹配 |
| `upstream_exposure_u_t` | upstream industry-year | `sum_d omega_u_d * (input_demand_wedge_d_t - 1)` | IO 表 + 税调 | 核心解释变量 | IO 权重可能静态，行业映射误差 |
| `centrality_u` | industry | upstreamness、network centrality、Leontief influence | IO 表 | 区分 network centrality 与 wedge exposure | centrality 与政策偏好高度相关 |
| `ar_sales_i_t` | firm-year | 应收账款 / 销售 | 税调 | 上游压力 | 行业账期惯例差异 |
| `ap_cogs_i_t` | firm-year | 应付账款 / 营业成本或中间投入 | 税调 | 交易压力 | 买方/卖方身份混合 |
| `cashflow_assets_i_t` | firm-year | 经营现金流 / 资产 | 税调 | 上游压力 | 现金流口径可得性 |
| `investment_rate_i_t` | firm-year | 固定资产投资 / 期初资产或资本存量 | 税调 | 上游扩张不足 | 投资数据缺失或跳跃 |
| `fin_cost_i_t` | firm-year | 财务费用 / 负债或资产 | 税调 | 融资压力 | 与 subsidy 构造可能机械相关 |
| `zombie_i_t` | firm-year | 低利息覆盖率、持续亏损或政策性续贷 proxy | 税调 | 上游压力或错配结果 | 定义争议大 |
| `policy_support_i_t` | firm-year | credit subsidy、低利率贷款、供应链金融 proxy | 税调 / 政策标签 | 政策流向 | 供应链金融直接变量可能不可得 |
| `controls_i_t` | firm-year | size、age、SOE、export、capital intensity、TFP、region、ownership | 税调 | 控制混杂因素 | 部分变量需清洗 |

## 6. 第一批回归设计

### Table 1：复刻 Wang，确认基准政策事实

目的：确认当前数据中能否复刻 high-markup sectors receive more credit subsidies。

基准式：

```text
credit_subsidy_i_s_t
  = beta * markup_s_t-1
  + X_i_s_t-1
  + sector FE
  + year FE
  + error_i_s_t
```

预期：`beta > 0`。

通过标准：

- 方向与 Wang 一致；
- 使用不同 markup 聚合方式仍稳定；
- 使用不同债务口径构造 subsidy 后方向不消失。

### Table 2：input-demand wedge 的分布与合理性

目的：说明 wedge 不是由极端值或口径错误机械生成。

输出：

- firm-level 和 industry-level wedge 的均值、中位数、p10、p90；
- 按行业、年份、所有制、规模分组；
- winsorization 前后对比；
- 与 output markup 的相关性。

通过标准：

- 有行业异质性；
- 与 output markup 相关但不完全重合；
- 极端值不主导主要结果。

### Table 3：wedge validation，验证 buyer-power interpretation

基准式：

```text
input_demand_wedge_d_t
  = beta1 * downstream_concentration_d_t-1
  + beta2 * buyer_size_d_t-1
  + beta3 * supplier_fragmentation_related_d_t-1
  + controls_d_t-1
  + industry FE
  + year FE
  + error_d_t
```

补充式：

```text
input_demand_wedge_d_t
  = beta * payment_pressure_d_t-1
  + controls_d_t-1
  + industry FE
  + year FE
  + error_d_t
```

预期：

- 下游集中度越高，wedge 越高；
- 下游大企业占比越高，wedge 越高；
- 账期压力或应收/应付压力越高，wedge 越高。

如果这些关系不成立，不能使用 buyer power 作为主解释。

### Table 4：upstream exposure and stress

先构造：

```text
upstream_exposure_u_t
  = sum_d omega_u_to_d * (input_demand_wedge_d_t - 1)
```

行业层面：

```text
stress_u_t
  = beta * upstream_exposure_u_t-1
  + controls_u_t-1
  + upstream_industry FE
  + year FE
  + error_u_t
```

企业层面：

```text
stress_i_u_t
  = beta * upstream_exposure_u_t-1
  + X_i_u_t-1
  + upstream_industry FE
  + year FE
  + region FE
  + error_i_u_t
```

stress variables：

- 应收账款 / 销售；
- 经营现金流 / 资产；
- 投资率；
- 财务费用率；
- 僵尸企业比例；
- 退出率。

预期：

- `upstream_exposure` 越高，上游应收账款压力越强；
- `upstream_exposure` 越高，上游现金流和投资越弱；
- 融资压力指标上升。

### Table 5：policy support and upstream exposure

核心式：

```text
credit_subsidy_i_u_t
  = beta * upstream_exposure_u_t-1
  + gamma * markup_u_t-1
  + delta * centrality_u
  + X_i_u_t-1
  + upstream_industry FE
  + year FE
  + region FE
  + error_i_u_t
```

关键检验：

- `beta > 0`；
- 控制自身 `markup_u_t-1` 后仍显著；
- 控制 `centrality_u` 或 network importance 后仍存在；
- 对政策时间窗口 2016-2017 后更强。

解释边界：

- 如果只看到 `markup` 显著、`exposure` 不显著，项目回到 Wang 扩展路线。
- 如果 `centrality` 显著但 `wedge exposure` 不显著，项目应转向 weak links / network centrality。
- 如果融资约束变量显著但 wedge 不显著，项目应转向 networked financial frictions。

## 7. 识别威胁与应对方案

| 威胁 | 为什么严重 | 应对方案 |
|---|---|---|
| wedge 测度不等于 buyer power | 税调没有企业间交易价格和数量，wedge 可能混合质量、技术、价格误差和需求冲击 | 统一称为 input-demand wedge；用集中度、买方规模、账期压力验证；避免直接写 markdown |
| 下游需求冲击混淆 | 高 wedge 下游可能只是处于需求下行或技术变化中 | 控制下游产出增长、价格指数、出口需求、行业趋势；做滞后 exposure |
| 政策内生选择 | 政策可能投向战略行业，而不是投向高 exposure 上游 | 控制行业固定效应、年份固定效应、centrality、SOE share、战略行业标签；利用 2016-2017 政策窗口做异质性 |
| Wang 机制混淆 | 政策支持可能仍由自身 high markup 解释 | 所有政策流向表必须控制自身 markup；报告 exposure 与 markup 的相关性 |
| IO 权重静态或错配 | 行业间投入产出权重不能反映真实企业交易关系 | 使用多版 IO 表；固定基期权重；报告行业映射表；做 leave-one-downstream-sector robustness |
| 反向因果 | 政策支持可能改变上游压力和 wedge | 使用滞后解释变量；排除政策实施后初期；做 pre-trend 或 placebo |
| 财务费用口径问题 | credit subsidy 可能受债务结构、会计处理和税收口径影响 | 使用多种 EIR 分母；排除极端负债企业；行业-年份利率基准替代 |
| 生存选择 | 压力大的企业退出，留下来的样本低估 stress | 加入退出率；构造 balanced/unbalanced panel 对比 |
| 区域政策混杂 | 地方政府产业政策和金融支持可能共同影响结果 | 加入 region-year FE 或 province-year FE；控制地方金融发展 |
| 供应链金融直接变量缺失 | 税调可能没有明确的供应链金融标识 | 先以 credit subsidy 和融资成本为主；供应链金融作为政策解释，若有专项标签再进入主表 |

## 8. 文献定位

| 文献 | 本项目使用方式 | 必须避免的误用 |
|---|---|---|
| Chen, Huang, Liu, Lu and Wang, `Preferential Credit Policy with Sectoral Markup Heterogeneity` | 继承税调数据、sectoral markup 和 credit subsidy 构造；Table 1 复刻其核心事实 | 不能把本文写成“Wang 加 network/markdown”的机械扩展 |
| Morlacco and Guigue, `Market Power in Input Markets` | 提供 input-market buyer power 和 markdown 测度的理论参照；说明本文 in the spirit of Morlacco | 税调数据不足以复制其交易层面 markdown 测度，不能直接声称估计纯 markdown |
| Jones, `Intermediate Goods and Weak Links` | 提供中间品网络和 weak links 放大机制 | 不能只引用为背景，必须在 exposure 构造中体现 IO 传导 |
| Jones, `Misallocation, Economic Growth, and Input-Output Economics` | 说明微观错配通过 IO 网络影响 aggregate TFP | 当前阶段不应直接做宏观福利分解 |
| Peters, `Heterogeneous Markups, Growth and Endogenous Misallocation` | 提供 markup、misallocation 和 firm dynamics 背景 | 不适合当前第一阶段直接引入完整动态模型 |
| Liu (2019), production networks and industrial policy | 提供“上游补贴可能具有二阶最优”的网络政策逻辑 | 需要后续补入原文并核验；不能简单把金融摩擦替换成 buyer power 后声称同一机制 |

## 9. Devil's Advocate Checkpoint 1

### Verdict

**PASS WITH MAJOR RISKS**。

研究问题本身清楚，方法路线可执行，但项目是否成立取决于 wedge validation 和 policy-flow evidence。当前不能直接进入 welfare model。

### Major Issues

1. **核心变量解释风险**
   - 问题：`theta_x / input_share` 在税调数据中可能不是 buyer power，而是需求、质量、价格或技术差异。
   - 建议：主文统一使用 domestic input-demand wedge；只有 Table 3 通过后才使用 buyer-power interpretation。

2. **政策机制过度解释风险**
   - 问题：供应链金融政策不等于反 markdown 政策。
   - 建议：政策文件只作为 buyer-supplier relationship frictions 的制度背景，不作为机制证据。

3. **与 Wang 重叠风险**
   - 问题：如果政策支持仍主要由自身 markup 解释，本文创新不足。
   - 建议：Table 5 必须控制自身 markup，并展示 exposure 的增量解释力。

4. **网络 exposure 可信度风险**
   - 问题：IO 权重是行业层面，不能证明真实企业交易关系。
   - 建议：主文明确为 industry-level exposure；若有企业客户/供应商数据再升级为 firm-level network。

### Strongest Counter-Argument

最强反对意见是：

> 你测到的并不是 buyer power，而是行业需求、技术或会计口径差异；政策支持也不是为了缓解这种 wedge，而是投向战略行业、国企或高 markup 行业。因此，本文的 buyer power 和 supply-chain finance 解释可能只是事后叙事。

本文必须用 Table 3、Table 4 和 Table 5 同时回应这个批评。

### Stress Test

| 测试 | 结果 | 含义 |
|---|---|---|
| 去掉 Wang 机制后是否仍成立？ | 未知，必须由 Table 5 检验 | 需要控制自身 markup |
| wedge 不被 buyer-power primitives 解释时怎么办？ | 主线失败 | 转为 input-demand wedge measurement 或 financial frictions |
| policy support 不跟 exposure 相关时怎么办？ | 政策主线失败 | 转为 upstream stress / weak links 论文 |
| 只在 2016-2017 后更强是否更可信？ | 是 | 可作为供应链金融政策背景的支持证据 |

## 10. 第一阶段执行清单

### 第 1 周：数据可行性检查

- 明确税调年份、行业代码、地区代码、企业 ID 是否稳定。
- 检查财务费用、利息支出、短期/长期负债、应收账款、应付账款、投资变量可用性。
- 明确中间投入、营业成本、收入、资本、劳动变量口径。
- 建立行业代码与 IO 表行业映射。

### 第 2 周：复刻 Wang

- 在 `03_code/stata/02_construct_markup_credit_subsidy.do` 中构造 markup 和 credit subsidy。
- 生成 Table 1。
- 记录与 Wang 不一致之处：年份、样本、行业口径、变量口径。

### 第 3 周：构造 input-demand wedge

- 估计 revenue function。
- 构造 `theta_x`、`input_share`、`input_demand_wedge`。
- 生成 Table 2。
- 检查极端值、行业分布和与 markup 的相关性。

### 第 4 周：验证 buyer-power interpretation

- 构造 downstream concentration、buyer size、supplier fragmentation 和 payment pressure。
- 生成 Table 3。
- 决定是否可以在主文中使用 buyer power 语言。

### 第 5-6 周：上游 exposure 与政策流向

- 构造 IO weights 和 `upstream_exposure`。
- 生成 Table 4 和 Table 5。
- 判断主线是否成立，或是否需要转向 weak links / financial frictions / Wang extension。

## 11. 对现有代码目录的映射

| 研究任务 | 当前代码文件 |
|---|---|
| 数据清洗、企业面板、行业映射 | `03_code/stata/01_clean_tax_survey.do` |
| markup 和 credit subsidy | `03_code/stata/02_construct_markup_credit_subsidy.do` |
| input-demand wedge | `03_code/stata/03_construct_input_demand_wedge.do` |
| IO 权重和 upstream exposure | `03_code/stata/04_construct_upstream_exposure.do` |
| Table 1-5 回归和导出 | `03_code/stata/05_regressions.do` |
| 变量定义维护 | `03_code/shared/variable_dictionary.md` |

## 12. 当前阶段结论

推荐主线是 **Buyer Power + Supply-Chain Finance in Domestic Production Networks**，但第一阶段必须严格遵守实证优先原则。

最小可行论文不是完整 welfare paper，而是五张表：

1. 复刻 Wang 的 high markup - credit subsidy 事实。
2. 构造并描述 input-demand wedge。
3. 验证 wedge 是否像 buyer power。
4. 检验 upstream exposure 是否预测上游压力。
5. 检验政策支持是否流向 high-exposure upstream sectors，并且独立于自身 markup。

只有这五张表中至少 Table 3-5 成立，才值得进入 welfare model 或完整论文写作。

