# Research Question + Empirical Blueprint

更新日期：2026-05-25

使用模式：`academic-research-suite` / `deep-research` early-stage scoping

核心状态：本文件已按 2026-05-25 新增 notes 更新，旧版较短表格框架已替换为“六层证据链”。当前目标不是直接证明强政策叙事，而是先建立一条可检验的机制、配置和效果链条。

参考材料：

- `06_notes/supply_chain_buyer_power_project_summary.pdf`
- `06_notes/project_progress_notes_input_wedge_network_credit.md`
- `06_notes/journal_targeting_strategy_notes.md`
- `01_literature/main-jie-revision_new.pdf`
- `01_literature/Market_Power_Inputs_2023.pdf`
- `01_literature/JonesAEJM2011.pdf`
- `01_literature/shanghai200.pdf`
- `01_literature/markupsmisallocation.pdf`

## 1. 当前项目定位

第一阶段应使用谨慎标题：

> Input-Demand Wedges, Upstream Exposure, and Credit Allocation in Domestic Production Networks

中文：

> 国内生产网络中的投入需求楔子、上游暴露与信贷配置

如果 `buyer-power interpretation`、政策配置和政策效果都得到支持，再升级为：

> Buyer-Power-Related Wedges and Credit Allocation in Production Networks

不建议在当前阶段把标题升级为 `Buyer Power, Supply-Chain Finance, and Industrial Policy in Production Networks`。该标题会把文章误导成供应链金融文章，并削弱与 Liu (2019) 的区分。

当前最稳妥的论文问题是：

> 政策性信贷是否缓解了由下游采购端 input-demand wedge 经生产网络传导而来的上游融资与投资压力？

对应英文表述：

> Does preferential credit mitigate upstream financing and investment pressures induced by downstream buyer-power-related input-demand wedges in domestic production networks?

这一定义包含两个约束：

1. 不直接把估计对象称为 pure markdown。
2. 不把政策文件直接解释为供应链金融纠正 buyer power 的证据。
3. 不把中征平台或 SCF 作为主 treatment；SCF 只能作为 `policy_support_i_u_t` 的候选 proxy。

## 2. 核心概念

### 2.1 Wedge 是行业作为买方时的楔子

当前估计对象应称为：

```text
intermediate input-demand wedge
```

若数据能区分国内投入和进口投入，可称为：

```text
domestic intermediate input-demand wedge
```

基本公式：

```text
psi^X_{d,t} = theta^{X,r}_{d,t} / alpha^X_{d,t}
```

其中：

- `d` 是作为中间品买方的下游行业；
- `theta^{X,r}_{d,t}` 是中间投入的 revenue elasticity；
- `alpha^X_{d,t}` 是中间投入支出占收入份额；
- `psi^X_{d,t} > 1` 表示该行业在采购中间投入时存在 input-demand wedge。

一个行业不是天然的上游或下游。上游和下游是投入产出关系中的角色：

- 汽车整车行业购买钢铁、橡胶、电子元件时是下游买方；
- 汽车零部件行业卖给整车企业时是上游供应方；
- 同一个行业在不同 IO 关系中可以同时是买方和卖方。

### 2.2 Wedge 不是自动等于 buyer power

`input-demand wedge` 可能反映：

- buyer power；
- payment friction；
- 质量差异；
- 价格测度误差；
- 技术异质性；
- 需求冲击；
- 数据口径差异。

因此，只有在它与下游集中度、大买方份额、供应商分散度、账期压力、净 trade credit 等变量同向时，才能谨慎使用 `buyer-power-related wedge` 表述。

## 3. IO 暴露度构造

先估计每个行业作为买方时的 wedge：

```text
psi^X_{d,t}
```

再用 IO 表将下游 wedge 映射为上游行业暴露度：

```text
Exposure_{u,t} = sum_d omega_{u->d} * (psi^X_{d,t} - 1)
```

关键权重定义：

```text
omega_{u->d} = Z_{d,u} / sum_{d'} Z_{d',u}
```

解释：

> `omega_{u->d}` 是上游行业 `u` 的中间品销售中，有多少比例卖给下游行业 `d`。

不能使用下面这个权重来构造上游暴露度：

```text
Z_{d,u} / sum_{u'} Z_{d,u'}
```

后者表示下游行业 `d` 从哪些上游行业采购投入，适合描述下游投入结构，不适合描述上游行业暴露于哪些下游买方。

这个 IO 权重方向是后续代码中最容易出错的地方，必须在 `03_code/stata/04_construct_upstream_exposure.do` 中写成硬性注释。

## 4. Research Question Brief

### 4.1 主研究问题

在中国国内生产网络中，作为中间品买方的下游行业是否存在可测度的 input-demand wedge；这些下游 wedge 是否通过 IO 联系造成上游供应商的现金流、账期和投资压力；政策性信贷是否流向这些高暴露上游部门，并进一步改善其融资、投资和生存表现？

### 4.2 FINER 评估

| 维度 | 评分 | 判断 |
|---|---:|---|
| Feasible | 4/5 | 税调数据、IO 表和 Wang 式 credit subsidy 构造可以支持第一轮事实链。主要难点是 wedge 测度、IO 映射和政策效果识别。 |
| Interesting | 5/5 | 连接 buyer power、生产网络、上游融资压力和产业政策有效性，是发展经济学和产业政策读者会关心的问题。 |
| Novel | 4/5 | 不只是 Wang 加网络变量，而是把政策对象从自身 high-markup sectors 转为暴露于下游 input-demand wedge 的上游供应方。 |
| Ethical | 5/5 | 使用企业行政数据时需做脱敏与安全管理；研究问题本身没有明显伦理障碍。 |
| Relevant | 5/5 | 直接对应政策性信贷配置、上游融资压力、补链强链和应收账款融资等政策工具；供应链金融只是候选政策 proxy，不是主研究对象。 |
| **平均** | **4.6/5** | 表示该研究问题值得推进，但不是发表概率。是否达到 JDE / AEJ Policy 取决于 Table 4-6。 |

### 4.3 备选问题及边界

| 路线 | 研究问题 | 适用条件 | 处理 |
|---|---|---|---|
| 主线 | 政策性信贷是否缓解高 exposure 上游融资与投资压力？ | Table 3-6 支持 | JDE 主目标 |
| 诊断路线 | 高 exposure 上游压力存在，但政策未回应 | Table 4 成立、Table 5 不成立 | policy targeting gap |
| 测度路线 | wedge 可测但不像 buyer power | Table 3 不成立 | input-demand wedge measurement |
| Wang 扩展 | 信贷只跟自身 markup 相关 | Table 5 中 markup 主导 | 创新性下降 |
| weak links 路线 | 信贷跟 centrality 相关但跟 wedge 无关 | centrality 主导 | production network weak links |

### 4.4 去供应链金融中心化的定位修正

当前项目不能被写成一篇供应链金融政策评估文章。供应链金融只是中国政策场景中的一个可观测工具，而不是论文的核心研究对象。论文的核心应保持为：下游 input-demand wedge / buyer-side distortion 是否通过投入产出网络传导为上游融资、账期和投资压力，以及政策性信贷是否回应并缓解这种上游暴露。

与 Liu (2019) 的区别在于，Liu 从理论上研究一般性市场不完善如何通过生产网络累积并影响最优部门性产业政策；本文则研究一个更具体、可测度的摩擦：下游投入需求楔子和与支付相关的买方侧扭曲。本文不是预设上游部门应被支持，而是先测度下游 wedge，再通过 IO 表将其映射为上游暴露度，并检验现实中的信贷配置和企业结果是否对这种暴露作出反应。

因此，SCF / 中征平台数据应被降级为候选政策工具或辅助政策变量，而不能成为基准 treatment。基准政策变量仍应是 Wang-style credit subsidy。供应链金融可在 Layer 5 和 Layer 6 中作为 `policy_support_i_u_t` 的候选 proxy，用于检验是否存在供应链金融渠道。

| 维度 | Liu (2019) | 本项目 |
|---|---|---|
| 核心问题 | 一般性市场不完善如何通过生产网络累积，并决定最优部门性产业政策 | 下游 input-demand wedge / buyer-side distortion 是否通过 IO 网络造成上游融资与投资压力 |
| 摩擦来源 | general sectoral distortions / market imperfections | 下游采购端 wedge、账期压力、buyer power、payment friction |
| 政策对象 | distortion-central sectors，常常偏上游 | 暴露于高-wedge 下游的上游企业/行业 |
| 政策工具 | 抽象 subsidy / industrial policy | preferential credit / credit subsidy；SCF 只是候选工具之一 |
| 贡献性质 | 理论 sufficient statistic / optimal policy logic | 中国企业数据 + IO 表 + 信贷配置与企业结果 |

## 5. 六层证据链

当前项目不应停在政策配置和诊断层面。为了达到 JDE / AEJ Policy 的最低说服力，需要六层证据：

| 层 | 名称 | 问题 | 作用 |
|---|---|---|---|
| Layer 1 | Measure downstream input-demand wedges | 哪些行业作为中间品买方时 wedge 高？ | 建立可测度对象 |
| Layer 2 | Validate buyer-power interpretation | 高 wedge 行业是否更集中、更大、供应商更分散、账期压力更强？ | 决定是否能使用 buyer power 语言 |
| Layer 3 | Construct upstream exposure | 哪些上游行业销售给高 wedge 下游？ | 把下游 wedge 映射到上游 |
| Layer 4 | Test upstream stress | 高 exposure 上游是否现金流、账期、投资压力更大？ | 证明网络传导后果 |
| Layer 5 | Test policy targeting | 信贷是否流向高 exposure 上游，且独立于自身 markup？ | 只说明政策配置 |
| Layer 6 | Test policy effectiveness | 信贷是否改善高 exposure 上游的融资、投资、R&D、生存？ | 才能讨论政策有效性 |

SCF 是政策反应变量，不是研究对象本身。更准确的层级如下：

| 层级 | 核心问题 | SCF 是否出现 |
|---|---|---|
| Layer 1 | 构造 downstream input-demand wedge | 不出现 |
| Layer 2 | 验证 wedge 是否像 buyer power / payment friction | 一般不出现；若有 SCF 平台数据，可作为辅助验证，不是主变量 |
| Layer 3 | 用 IO 表构造 upstream exposure | 不出现 |
| Layer 4 | 检验 high-exposure upstream 是否压力更大 | 不作为主变量；最多作为制度背景或 supplementary variable |
| Layer 5 | 检验 credit / policy targeting | 可以作为 `policy_support_i_u_t` 的一个 proxy |
| Layer 6 | 检验 policy effectiveness / trade-off | 可以作为一种政策工具，与 credit subsidy 并列 |

当前最稳的变量层级是：

```text
主政策变量：credit_subsidy_i_t
辅助政策变量：policy_support_i_u_t
候选扩展变量：scf_access_i_t
最强但未确认变量：scf_amount_i_t
```

关键区分：

```text
Table 5 = policy targeting
Table 6 = policy effectiveness
```

不能把 Table 5 解释为政策有效性。

## 6. 推荐表格结构

### Table 1：复刻 Wang

问题：

> high-output-markup industries 是否获得更多 credit subsidy？

目的：

- 确认当前税调数据可以复刻 Wang 的核心事实；
- 为后续区分本文机制和 Wang 机制提供基准；
- 所有后续政策配置回归都必须控制自身 output markup。

基准式：

```text
CreditSubsidy_{i,s,t}
  = beta * Markup_{s,t-1}
  + X_{i,s,t-1}
  + sector FE
  + year FE
  + error_{i,s,t}
```

### Table 2：input-demand wedge 分布

问题：

> 能否构造稳定、合理的 industry-level input-demand wedge？

输出：

- `psi^X_{d,t}` 的均值、中位数、p10、p90；
- 行业和年份分布；
- winsorization 前后对比；
- 与 output markup 的相关性。

通过标准：

- 有合理行业异质性；
- 不由极端值驱动；
- 与 output markup 不完全重合。

### Table 3A-3C：wedge validation

目的：

> 验证 high-wedge downstream industries 是否真的像存在 buyer power 或 payment frictions 的行业。

Table 3A：wedge and downstream concentration

```text
psi^X_{d,t}
  = beta * Concentration_{d,t-1}
  + controls
  + industry FE
  + year FE
  + error_{d,t}
```

Table 3B：wedge and supplier fragmentation

```text
psi^X_{d,t}
  = beta * InputWeightedSupplierFragmentation_{d,t-1}
  + controls
  + industry FE
  + year FE
  + error_{d,t}
```

Table 3C：wedge and payment pressure

```text
psi^X_{d,t}
  = beta * PaymentPressure_{d,t-1}
  + controls
  + industry FE
  + year FE
  + error_{d,t}
```

如果 Table 3 不成立，主文只能使用 `input-demand wedge`，不能使用 `buyer power` 或 `markdown` 语言。

### Table 4：upstream exposure and upstream stress

定位边界：

- Table 4 的核心是检验 `upstream_exposure_u_t` 是否对应上游现金流、账期、融资费用和投资压力。
- 中征平台数据不应进入 Table 4 的主定义。若后续使用，也只能作为后续政策 access 或机制补充。
- 当前本地中征样本只有企业名单和资金方名单，不能把“平台注册名单”解释为“供应链金融实际流向”。

问题：

> 暴露于高-wedge 下游买方的上游企业是否现金流、账期和投资压力更强？

行业层面：

```text
Stress_{u,t}
  = beta * Exposure_{u,t-1}
  + controls
  + upstream industry FE
  + year FE
  + error_{u,t}
```

企业层面：

```text
Stress_{i,u,t}
  = beta * Exposure_{u,t-1}
  + X_{i,u,t-1}
  + firm FE
  + year FE
  + error_{i,u,t}
```

结果变量：

- `ar_sales`；
- `ar_days`；
- `cashflow_assets`；
- `financial_expense_assets`；
- `investment_rate`；
- `exit`；
- 可选：`rd_sales`、`patent_count`、`new_product_sales`。

### Table 5：policy targeting

问题：

> 政策性信贷是否流向 high-exposure upstream sectors，并且不只是 Wang 式 high-markup allocation？

基准式：

```text
CreditSubsidy_{i,u,t}
  = beta * Exposure_{u,t-1}
  + gamma * Markup_{u,t-1}
  + delta * Centrality_u
  + X_{i,u,t-1}
  + firm or industry FE
  + year FE
  + error_{i,u,t}
```

解释：

- `beta > 0` 说明存在 upstream exposure targeting；
- `gamma` 是 Wang 机制；
- `Centrality` 区分 weak links / network centrality；
- Table 5 只证明政策流向，不证明政策有效。

### Table 6A：policy effectiveness

问题：

> 获得政策性信贷后，高 exposure 上游企业是否改善融资、投资、创新或生存表现？

候选式：

```text
Outcome_{i,u,t}
  = beta * PolicySupport_{i,u,t} * Exposure_{u,t-1}
  + controls
  + firm FE
  + year FE
  + error_{i,u,t}
```

或：

```text
Outcome_{i,u,t}
  = beta1 * Exposure_{u,t-1}
  + beta2 * PolicySupport_{i,u,t}
  + beta3 * Exposure_{u,t-1} * PolicySupport_{i,u,t}
  + controls
  + firm FE
  + year FE
  + error_{i,u,t}
```

关键结果变量：

- `cashflow_assets`；
- `financial_expense_assets`；
- `investment_rate`；
- `rd_sales`；
- `patent_count`；
- `survival`；
- `zombie_indicator`。

### Table 6B：trade-off / payment persistence

Data Feasibility Audit, 2026-05-25：

- `SCF_access_i_t` 只能用于检验加入平台后的 payment persistence 或应收账款压力变化，不能代表企业实际获得的融资金额。
- 若完整中征数据没有债权人-债务人关系或核心企业字段，Table 6B 不应使用 `buyer-supplier financing network` 表述。
- 若完整中征数据包含逐笔融资交易，才可以把 `SCF_amount_i_t` 与 `ar_days_i_t`、`buyer_dependence_i_t`、`payment_persistence_i_t` 联合用于 trade-off 检验。
- 该表的主线仍是 policy support 的 trade-off，不是供应链金融本身的效果评估。

问题：

> 政策支持是否缓解融资和投资压力，同时让账期占用、供应商依赖或低效率存活持续存在？

候选结果：

- `ar_days` 是否下降；
- `ar_sales` 是否下降；
- `buyer_dependence` 是否上升；
- `zombie_indicator` 是否上升；
- `supplier_profit_margin` 是否下降；
- `payment_persistence` 是否存在。

若 Table 6A 和 Table 6B 同时成立，文章可以形成类似 Wang 的 trade-off：

```text
weak-link relief
vs.
payment persistence / supplier dependence
```

## 7. 政策效果与 trade-off

Wang 的 trade-off 是：

```text
sector-level allocation gain
vs.
within-sector zombie / selection distortion
```

本项目可能的 trade-off 是：

```text
network weak-link relief
vs.
payment persistence / supplier dependence
```

具体解释：

- 好的一面：政策性信贷或其他上游支持缓解高 exposure 上游企业的现金流和投资压力。
- 坏的一面：若某些支持工具依赖应收账款或核心企业信用传递，可能让长账期关系更可持续，供应商对核心买方更依赖。

因此最终不能写成“供应链金融有效”或“SCF 是核心机制”。更稳妥的写法是：

> 政策性信贷和相关上游支持可能是一种有条件有效的二阶最优政策：它缓解生产网络弱链，但某些工具也可能制度化 payment persistence 或 supplier dependence。

## 8. 识别威胁

| 威胁 | 影响 | 应对 |
|---|---|---|
| wedge 不等于 buyer power | 会削弱主机制 | 统一称为 input-demand wedge；用 Table 3 验证解释 |
| IO 权重方向错误 | exposure 构造无效 | 使用 `Z_{d,u} / sum_d Z_{d,u}`；在代码中写明 |
| Wang 机制混淆 | 政策可能只投向 high markup | Table 5 必须控制自身 output markup |
| network centrality 混淆 | 政策可能支持中心行业而非 high exposure | 控制 upstreamness、centrality、Leontief influence |
| 政策内生选择 | 政策投向本来会改善的企业 | 使用滞后变量、firm FE、province-year FE、政策窗口或试点 |
| Table 5 不等于有效性 | 只能说明 targeting | 必须做 Table 6 |
| 账期机制改写主线 | 容易变成另一篇文章 | 账期只作为 validation、stress 和 trade-off，不替代主线 |
| SCF 改写主线 | 容易变成中征平台或供应链金融文章 | SCF 只作为候选 policy proxy；主线仍是 wedge、exposure 和 credit allocation |

## 9. 期刊目标

当前学科定位：

```text
Development / industrial policy / production networks / firm finance paper
```

不应定位为：

```text
International trade paper
```

期刊排序：

| 版本 | 证据要求 | 目标 |
|---|---|---|
| 最强版本 | 有可信政策冲击、Table 6A 成立、welfare 或 sufficient statistic 明确 | AEJ: Economic Policy / EJ / JDE |
| 强版本 | 完整事实链：wedge -> exposure -> upstream stress -> targeting -> firm outcomes | JDE 主投 |
| 中强版本 | 有 wedge、exposure、stress、targeting，但 policy effect 弱 | JDE 风险较大；考虑 JPubE / IJIO / Journal of Industrial Economics |
| 中等版本 | 主要是 wedge measurement 和 upstream exposure | IJIO / Journal of Industrial Economics / China Economic Review |
| 弱版本 | 只有 targeting，没有 stress 或 effectiveness | 先补结果，不建议投好期刊 |

JDE / AEJ Policy 的最低要求：

```text
wedge -> exposure -> upstream stress -> credit targeting -> firm outcomes
```

如果没有 Table 6，文章会停留在政策配置或诊断层面。

## 10. Data Feasibility Audit, 2026-05-25

本轮数据可行性核查的完整记录见 `06_notes/data_feasibility_audit.md`。当前结论如下。

| 数据源 | 核实来源 | 对本项目的作用 | 当前状态 |
|---|---|---|---|
| National Tax Survey | `https://www.cnopendata.com/data/m/large-dedicated/Tax-Survey.html`；Wang 等文献 | 主数据路线；支持 firm-year 财务、credit subsidy、应收账款、投资、R&D 或新产品变量 | `pending full variable dictionary` |
| 国家投入产出表 | `https://data.stats.gov.cn/dg/website/page.html#/pc/national/home` | 构造 `z_d_u`、`omega_u_to_d`、`upstream_exposure_u_t` | `confirmed` |
| 税收调查企业专利及引用被引用数据 | `https://www.cnopendata.com/data/tax-patent.html` | Table 6A 的 innovation outcome 候选来源 | `pending full variable dictionary` |
| 中征应收款融资服务平台数据 | `D:\working_paper\Yongwang\02_data\raw\中征应收款融资服务平台数据`；`D:\working_paper\Yongwang\01_literature\DownPdf.pdf` | Table 5 / Table 6 的 supplementary candidate proxy for platform access | `pending full variable dictionary` |

中征平台数据必须分层使用：

| 版本 | 可构造变量 | 解释边界 |
|---|---|---|
| 当前本地样本 | 企业名单、资金方名单、地区 | 只能识别平台参与主体；不能构造 firm-year treatment |
| 最低可用版本 | `SCF_access_i_t` / `ZZSC_i_t`、`scf_join_year_i` | 表示 platform access，不等于 actual financing |
| 最强版本 | `SCF_amount_i_t`、融资日期、债权人、债务人或核心企业 | 可讨论 actual financing 和 buyer-supplier financing relationship |

因此，当前项目可以把中征平台数据写为 `candidate SCF proxy`，但暂时不能写成 `actual SCF flow`、`financing amount received` 或 `buyer-supplier financing network`。

更重要的是，即使完整中征数据可用，SCF 也不应成为论文主线。主线仍是：

```text
downstream input-demand wedge
-> upstream exposure
-> upstream stress
-> credit allocation / policy response
-> policy effectiveness and trade-off
```

## 11. 与现有代码目录的映射

| 任务 | 文件 |
|---|---|
| 数据清洗、企业面板、行业映射 | `03_code/stata/01_clean_tax_survey.do` |
| Wang 式 markup 和 credit subsidy | `03_code/stata/02_construct_markup_credit_subsidy.do` |
| input-demand wedge | `03_code/stata/03_construct_input_demand_wedge.do` |
| IO 权重和 upstream exposure | `03_code/stata/04_construct_upstream_exposure.do` |
| Table 1-6 回归和导出 | `03_code/stata/05_regressions.do` |
| 变量定义维护 | `03_code/shared/variable_dictionary.md` |

## 12. 近期执行顺序

1. 明确税调数据中收入、中间投入、劳动、资本、债务、财务费用、应收账款、应付账款、投资、R&D、专利或新产品变量是否可用。
2. 构造 Wang 式 `markup` 和 `credit_subsidy`，复刻 Table 1。
3. 估计中间投入 revenue elasticity，构造 `psi_x_d_t`，生成 Table 2。
4. 构造 downstream concentration、large-firm share、supplier fragmentation 和 payment-pressure variables，生成 Table 3A-3C。
5. 建立税调行业与 IO 行业映射，使用正确方向构造 `omega_u_to_d` 和 `upstream_exposure_u_t`。
6. 检验 exposure 是否预测上游 stress，生成 Table 4。
7. 检验 credit subsidy 是否响应 exposure，并控制自身 markup，生成 Table 5。
8. 若 Table 4-5 支持机制，进入 Table 6A-6B，检验政策效果和 trade-off。

## 13. 当前结论

当前项目值得继续推进，但必须用谨慎语言和六层证据链。

最重要的判断是：

> 项目的核心创新不是“又加一个 network variable”，而是把下游买方侧 input-demand wedge 通过 IO 表映射为上游暴露度，并检验政策性信贷是否 targeting and mitigating 这种网络传导出来的上游融资与投资压力。
