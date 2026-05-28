# TODO

## 当前完成标准

近期工作的目标不是直接写完整 welfare model，而是先完成可检验的六层证据链。只有在 Table 3、Table 5 和 Table 6 成立后，论文才适合从谨慎标题升级为 buyer power / supply-chain finance / industrial policy 主线。

## 近期任务：资料与变量

Data Feasibility Audit 核实时间：2026-05-25。

- [ ] 整理现有 PDF 到 `01_literature/`，并为每篇文献写 5-10 行笔记。
- [ ] 将旧 summary 文件只作为历史材料引用，不再把旧版较短表格框架当作当前方案。
- [x] 将 2026-05-28 新增三篇文献纳入项目定位：China vertical structure、upstream SOE spillover、GVC upstreamness / production-line position。
- [x] 核实当前中征应收款融资服务平台样本文件结构，并记录样本只含企业名单和资金方名单。
- [ ] 确认 NTSD 完整字段说明，包括收入、中间投入、负债、利息支出、应收账款、应付账款、现金流、投资、R&D 或新产品变量。
- [ ] 确认中征平台完整版本是否包含企业加入平台日期或年份。
- [ ] 确认中征平台完整版本是否包含逐笔融资交易，包括融资日期、融资金额、债权人、债务人、核心企业、融资类型、期限和融资成本。
- [ ] 确认税收调查企业专利及引用被引用数据是否能用纳税人识别号、统一社会信用代码、组织机构代码或企业名称匹配 NTSD。
- [ ] 确认国家投入产出表版本、行列方向、行业分类版本和 NTSD-IO concordance。
- [ ] 固定行业分类、IO 表版本、税调行业代码和 concordance 方案。
- [ ] 固定变量命名：`psi_x_d_t`、`omega_u_to_d`、`upstream_exposure_u_t`、`credit_subsidy_i_t`、`policy_support_i_u_t`。
- [ ] 构造或确认 vertical-structure controls：`upstreamness_u`、`upstream_soe_share_u_t`、`upstream_hhi_u_t`、`upstream_soe_hhi_u_t`、`upstream_profit_margin_u_t`。
- [ ] 构造或确认 upstream SOE policy controls：SOE subsidy intensity、SOE tax preference、SOE interest advantage 或 `upstream_soe_policy_exposure_u_t`。
- [ ] 确认是否有可用数据构造 GVC robustness variables：`upstream_export_exposure_u_t`、`processing_trade_proxy_i_t`、`gvc_position_i_t`、`import_upstreamness_i_t`、`export_upstreamness_i_t`、`production_stage_span_i_t`。

## 近期任务：六层证据链

- [ ] Table 1：复刻 Wang-style markup 与 credit subsidy 的基准事实。
- [ ] Table 2：构造并报告 downstream `input-demand wedge` 的分布和行业异质性。
- [ ] Table 3A：检验 wedge 是否与 downstream concentration / buyer size 相关。
- [ ] Table 3B：检验 wedge 是否在 supplier fragmentation 更高处更强。
- [ ] Table 3C：检验 wedge 是否对应 accounts receivable、AR days 或 payment pressure。
- [ ] Table 4：检验高 `upstream_exposure` 上游企业是否有更强现金流、融资费用、账期或投资压力。
- [ ] Table 5：检验政策性信贷是否流向高 exposure 上游，并控制自身 `markup_u_t`、vertical-structure controls、SOE-policy controls 和 network centrality。
- [ ] Table 6A：检验政策性信贷是否改善高 exposure 上游的现金流、投资、R&D、创新或生存。
- [ ] Table 6B：检验 trade-off，包括 payment persistence、buyer dependence 或 zombie-firm 风险。
- [ ] Robustness：检验结果不是由 upstream SOE monopoly、GVC upgrading、firm lifecycle dynamics、processing trade 或 generic network centrality 驱动。

## 近期任务：代码与论文

- [ ] 把 baseline empirical design 写入 `03_code/stata/main.do` 和各模块 `.do` 文件。
- [ ] 在 `05_paper/sections/data.tex` 中写清楚数据与变量。
- [ ] 在 `05_paper/sections/empirics.tex` 中写清楚 Table 1-6B 的识别逻辑。
- [ ] 只有在 Table 6 结果可用后，才在论文中使用强政策有效性表述。
