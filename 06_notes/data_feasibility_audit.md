# Data Feasibility Audit

核实时间：2026-05-25

本文件记录当前项目早期数据可行性核查结果。结论只分为三类：

- `confirmed`：已经从本地文件或网页说明中直接确认。
- `pending full variable dictionary`：方向可行，但必须拿到完整字段说明或正式数据后才能进入代码。
- `not available in current sample`：当前本地样本文件没有该字段，不能据此做回归变量。

## 1. National Tax Survey

| 项目 | 结论 | 状态 |
|---|---|---|
| 来源 | CnOpenData 中国税收调查企业数据页面：`https://www.cnopendata.com/data/m/large-dedicated/Tax-Survey.html` | `confirmed` |
| 覆盖期 | 页面显示数据覆盖 2008-2020；Wang 等文献使用 National Tax Survey Database, 2009-2020 | `confirmed` |
| 样本规模 | CnOpenData 页面说明每年约 60-70 万家企业样本 | `confirmed` |
| 字段规模 | CnOpenData 页面说明每年约 400-500 个字段 | `confirmed` |
| 内容模块 | 增值税、消费税、营业税、企业所得税、资产负债表、利润表、现金流量表等 | `confirmed` |
| 当前项目用途 | firm-year 面板、Wang-style markup / credit subsidy、现金流、应收账款、投资、融资压力、R&D 或新产品变量 | `pending full variable dictionary` |

当前判断：NTSD 是本项目主数据路线。它最适合支撑 Table 1、Table 2、Table 4、Table 5 和部分 Table 6A-6B。但完整实施前仍需确认收入、中间投入、短期/长期借款、利息支出、财务费用、应收账款、应付账款、现金流、投资、R&D、新产品或专利匹配标识等字段的准确名称与口径。

## 2. Input-Output Tables

| 项目 | 结论 | 状态 |
|---|---|---|
| 来源 | 国家数据首页：`https://data.stats.gov.cn/dg/website/page.html#/pc/national/home` | `confirmed` |
| 入口 | 国家数据首页 -> 快速查询（专题统计报表）-> 年度 -> 投入产出表 | `confirmed` |
| 已见版本 | 2005、2007、2010、2012、2015、2017、2018、2020、2023 年投入产出表列表 | `confirmed` |
| 当前项目用途 | 构造 `z_d_u`、`omega_u_to_d`、`upstream_exposure_u_t` | `confirmed` |
| 尚需确认 | IO 表行列方向、行业分类版本、与 NTSD 行业代码 concordance | `pending full variable dictionary` |

当前判断：IO 表可以支持生产网络暴露度构造。关键不是能否找到表，而是行业映射和权重方向必须在代码前固定。当前项目应继续使用上游销售目的地权重：

```text
omega_u_to_d = z_d_u / sum_d z_d_u
upstream_exposure_u_t = sum_d omega_u_to_d * (psi_x_d_t - 1)
```

## 3. Innovation Data

| 项目 | 结论 | 状态 |
|---|---|---|
| CnOpenData 总目录 | `https://www.cnopendata.com/all-data` | `confirmed` |
| 最匹配数据 | 税收调查企业专利及引用被引用数据：`https://www.cnopendata.com/data/tax-patent.html` | `confirmed` |
| 可用创新结果 | 专利申请/授权数量、专利质量、引用、被引用、专利详情、事务表 | `pending full variable dictionary` |
| 当前项目用途 | Table 6A 的 `patent_count_i_t`、`patent_quality_i_t`、citation outcomes | `pending full variable dictionary` |
| 尚需确认 | 是否可用纳税人识别号、组织机构代码或企业名称与 NTSD 精确匹配；企业调查年份范围；专利统计年份口径 | `pending full variable dictionary` |

当前判断：若能与 NTSD 企业标识匹配，税收调查企业专利及引用被引用数据是最自然的创新结果数据。通用专利库、绿色专利、数字经济专利、AI 专利和软件著作权可作为扩展结果，但不应优先替代 tax-patent matched data。

## 4. 中征应收款融资服务平台数据

本地核实来源：

- `D:\working_paper\Yongwang\02_data\raw\中征应收款融资服务平台数据`
- `D:\working_paper\Yongwang\01_literature\DownPdf.pdf`

网页或文献辅助来源：

- CnOpenData 总目录：`https://www.cnopendata.com/all-data`
- DownPdf.pdf：《数字化供应链金融可以降低企业质量风险吗？--来自中征应收账款融资平台的证据》

### 4.1 当前本地样本

| 文件 | 核实结果 | 状态 |
|---|---|---|
| `中征应收款融资服务平台数据-样本数据.xlsx` | 有 2 个 sheet：`资金方名单列表`、`企业名单列表` | `confirmed` |
| `资金方名单列表` | 1000 条样本；字段为 `注册资金方`、`组织机构代码`、`所属区域` | `confirmed` |
| `企业名单列表` | 1000 条样本；字段为 `注册企业`、`组织机构代码`、`所属区域` | `confirmed` |
| `CnOpenData数据说明.pdf` | 仅为版权和使用说明，不是变量说明书 | `confirmed` |
| `CnOpenData用户使用手册-2025版.pdf` | 通用手册中未定位到本数据产品的完整字段说明 | `confirmed` |

当前样本没有以下字段，因此不能直接构造 actual financing variables：

| 字段 | 当前样本状态 |
|---|---|
| 企业加入平台日期或年份 | `not available in current sample` |
| 融资日期 | `not available in current sample` |
| 融资金额 | `not available in current sample` |
| 应收账款债权人 | `not available in current sample` |
| 应收账款债务人或核心企业 | `not available in current sample` |
| 融资类型：质押、转让、保理等 | `not available in current sample` |
| 利率、贴现率、期限、到期日 | `not available in current sample` |

### 4.2 从 DownPdf.pdf 反推的数据口径

DownPdf.pdf 使用中征平台数据的核心方式是 `platform access`，不是逐笔融资金额。文章明确使用：

- 23.3 万家参与中征平台的企业名单；
- 通过与中国人民银行下属单位合作获取各公司加入中征平台的具体时间；
- 构造 `ZZSC_i_t`：企业是否在 `t-1` 年加入中征平台；
- 以 firm-year staggered treatment 检验加入平台后的企业结果变化。

因此，最低可用数据版本必须包含：

| 字段 | 用途 | 状态 |
|---|---|---|
| 企业名称或组织机构代码 | 匹配 NTSD 或上市公司 | `confirmed in current sample` |
| 企业加入平台日期或年份 | 构造 `SCF_access_i_t` / `ZZSC_i_t` | `pending full variable dictionary` |

最强版本还需要：

| 字段 | 用途 | 状态 |
|---|---|---|
| 融资日期 | 构造 firm-year actual financing | `pending full variable dictionary` |
| 融资金额 | 构造 `SCF_amount_i_t` | `pending full variable dictionary` |
| 债权人、债务人或核心企业 | 判断 buyer-supplier financing relationship | `pending full variable dictionary` |
| 融资类型、期限、利率或贴现成本 | 区分融资工具和融资成本 | `pending full variable dictionary` |

### 4.3 对本项目 Table 4-6B 的含义

| 表 | 可用方式 | 谨慎边界 |
|---|---|---|
| Table 4 | 若有加入时间，可用 `SCF_access_i_t` 作为 platform access，检验高 exposure 企业加入平台后资金压力是否变化 | 不能把企业名单解释为 actual financing |
| Table 5 | 若能按企业或行业聚合 `SCF_access_i_t`，可检验 platform access 是否更多出现在 high-exposure upstream firms/sectors | 这只是 targeting of access，不是 actual SCF flow |
| Table 6A | 若有加入时间，可检验 access 后现金流、投资、R&D、专利是否改善 | 有效性解释弱于 actual financing amount |
| Table 6B | 若有 AR days、应收账款、buyer dependence，可检验 trade-off / payment persistence | 若无债权人-债务人关系，不能声称 buyer-supplier financing network |

当前判断：中征平台数据是 candidate SCF proxy。当前样本只能支持平台参与主体识别，不能支持 actual financing flow。完整可用性取决于是否能拿到加入时间和逐笔交易字段。
