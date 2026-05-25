# Data

数据目录默认不提交具体数据文件，只提交目录结构和说明。

| 子目录 | 用途 | Git 策略 |
|---|---|---|
| `raw/` | 原始数据，不手工修改 | 默认忽略 |
| `intermediate/` | 清洗过程中的中间数据 | 默认忽略 |
| `processed/` | 可直接用于估计的数据 | 默认忽略 |

建议每个正式数据源补充一份说明：来源、下载日期、样本范围、变量字典、清洗脚本路径。

## 已核实候选数据源

核实时间：2026-05-25。

完整核查记录见 `D:\working_paper\Yongwang\06_notes\data_feasibility_audit.md`。

| 数据源 | 来源 | 当前判断 |
|---|---|---|
| National Tax Survey | `https://www.cnopendata.com/data/m/large-dedicated/Tax-Survey.html` | 主数据路线；需确认完整变量字典 |
| 国家投入产出表 | `https://data.stats.gov.cn/dg/website/page.html#/pc/national/home` | 可用于 `z_d_u`、`omega_u_to_d`、`upstream_exposure_u_t` |
| 税收调查企业专利及引用被引用数据 | `https://www.cnopendata.com/data/tax-patent.html` | 最匹配 Table 6A innovation outcomes；需确认企业标识匹配字段 |
| 中征应收款融资服务平台数据 | `D:\working_paper\Yongwang\02_data\raw\中征应收款融资服务平台数据` | candidate SCF proxy；完整可用性取决于加入时间和交易字段 |

### 中征应收款融资服务平台数据当前样本

本地样本路径：`D:\working_paper\Yongwang\02_data\raw\中征应收款融资服务平台数据\中征应收款融资服务平台数据-样本数据.xlsx`。

| Sheet | 当前样本字段 | 状态 |
|---|---|---|
| `资金方名单列表` | `注册资金方`、`组织机构代码`、`所属区域` | `confirmed` |
| `企业名单列表` | `注册企业`、`组织机构代码`、`所属区域` | `confirmed` |

当前样本没有企业加入平台时间、融资日期、融资金额、债权人、债务人、核心企业、融资类型、期限、利率或贴现成本。因此，当前样本不能解释为 `actual financing` 或 `actual SCF flow`。

### 需要继续向 CnOpenData 确认的字段

- 企业加入平台日期或年份。
- 融资日期。
- 融资金额。
- 应收账款债权人。
- 应收账款债务人或核心企业。
- 融资类型：质押、转让、保理等。
- 融资期限。
- 利率、贴现率或融资成本。
- 可用于匹配 NTSD 的企业标识：纳税人识别号、统一社会信用代码、组织机构代码或企业名称。
