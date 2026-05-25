# Project Log

## 2026-05-24

- 建立研究项目基础工作区。
- 现有文献 PDF 位于 `01_literature/`。
- 旧 summary 位于 `06_notes/`，作为项目路线记录保留。
- 新论文入口设为 `05_paper/main.tex`。

## 2026-05-25

- 新增并吸收 `06_notes/project_progress_notes_input_wedge_network_credit.md` 与 `06_notes/journal_targeting_strategy_notes.md`。
- 将当前项目定位更新为谨慎标题：`Input-Demand Wedges, Upstream Exposure, and Credit Allocation in Domestic Production Networks`。
- 将旧版较短表格方案更新为六层证据链：wedge measurement、buyer-power validation、upstream exposure、upstream stress、policy targeting、policy effectiveness。
- 明确 Table 5 只检验 `policy targeting`；Table 6A-6B 才检验 `policy effectiveness` 与 trade-off。
- 将 Karpathy-style 工作纪律加入 `AGENTS.md`，用于约束后续研究问题、实证设计和代码结构的改动。

## 2026-05-25 Data feasibility audit

- 新增 `06_notes/data_feasibility_audit.md`，记录本轮数据源核查结论、来源 URL、本地路径和字段限制。
- NTSD 是当前主数据路线。CnOpenData 税收调查页面显示税收调查企业数据覆盖 2008-2020，每年约 60-70 万家企业样本和约 400-500 个字段；完整实施前仍需确认正式变量字典。
- 国家数据投入产出表可用于构造 `z_d_u`、`omega_u_to_d` 和 `upstream_exposure_u_t`；下一步需要固定 IO 表版本、行列方向、行业分类版本和 NTSD-IO concordance。
- 税收调查企业专利及引用被引用数据是最匹配 Table 6A innovation outcomes 的候选来源；下一步需要确认是否能用纳税人识别号、统一社会信用代码、组织机构代码或企业名称匹配 NTSD。
- 中征应收款融资服务平台数据可作为 SCF 候选数据。当前本地样本只确认企业名单、资金方名单和地区字段；完整可用性取决于是否包含加入时间和逐笔交易字段。
- 根据 `01_literature/DownPdf.pdf`，已有文章使用中征平台数据时核心变量是企业是否加入平台及加入时间，即 `platform access` / `ZZSC_i_t`，不是逐笔融资金额。因此本项目暂时只能把中征数据写为 `candidate SCF proxy`，不能写成 `actual SCF flow`。

## 2026-05-25 Positioning correction

- 修正 Liu (2019) 定位：Liu 不是只研究金融摩擦，而是研究一般性市场不完善或部门扭曲如何通过投入产出联系累积，并影响最优部门性产业政策。
- 修正 SCF 定位：供应链金融和中征平台不是主 treatment，而是观察供应链金融是否成为一种政策工具的辅助数据源。
- 固定当前变量层级：主政策变量是 `credit_subsidy_i_t`；辅助政策变量是 `policy_support_i_u_t`；候选扩展变量是 `scf_access_i_t`；最强但未确认变量是 `scf_amount_i_t`。
