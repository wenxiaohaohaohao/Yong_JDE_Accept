# Input-Demand Wedges and Credit Allocation Project

本目录是一个可复现研究项目工作区。当前项目使用谨慎标题：

> Input-Demand Wedges, Upstream Exposure, and Credit Allocation in Domestic Production Networks.

当前主问题是：政策性信贷是否缓解由下游采购端 `input-demand wedge` 经国内生产网络传导而来的上游融资与投资压力。

这个表述故意保留谨慎边界。当前阶段的正确顺序是先构造事实链，再判断是否能够升级为 buyer power / supply-chain finance / industrial policy 的更强论文主线。

## 当前已有材料

当前已有资料已按用途放入对应目录。最新研究设计以 `06_notes/` 中的更新文件为准：

- `06_notes/research_question_empirical_blueprint.md`
- `06_notes/project_progress_notes_input_wedge_network_credit.md`
- `06_notes/journal_targeting_strategy_notes.md`

早期 summary 文件保留为历史材料，不再作为当前方案的唯一入口：

- `06_notes/supply_chain_buyer_power_project_summary.pdf`
- `06_notes/supply_chain_buyer_power_project_summary.tex`

文献 PDF 位于：

- `01_literature/JonesAEJM2011.pdf`
- `01_literature/main-jie-revision_new.pdf`
- `01_literature/Market_Power_Inputs_2023.pdf`
- `01_literature/markupsmisallocation.pdf`
- `01_literature/shanghai200.pdf`

## 目录结构

| 路径 | 用途 |
|---|---|
| `00_admin/` | 项目日志、待办事项、决策记录 |
| `01_literature/` | 文献笔记、BibTeX、后续整理后的 PDF |
| `02_data/` | 原始数据、中间数据、清洗后数据 |
| `03_code/` | Stata、Python、MATLAB 等研究代码 |
| `04_results/` | 表格、图、日志等可复现结果 |
| `05_paper/` | 论文主文件、章节、论文内图表和编译输出 |
| `06_notes/` | 想法、会议记录、机制草稿 |
| `config/` | 本地配置模板 |
| `scripts/` | 编译和复现脚本 |

## 推荐工作流

1. 把原始数据放入 `02_data/raw/`，不要提交到 Git。
2. 先复刻 Wang-style markup 与 credit subsidy 事实，确认政策性信贷变量可用。
3. 构造行业作为买方时的 `input-demand wedge`，并检验其分布是否合理。
4. 用 buyer-power primitives 验证 wedge 解释，包括下游集中度、大买方规模、供应商分散度和账期压力。
5. 用投入产出表构造 `upstream exposure`，权重为上游行业销售给各下游行业的销售份额。
6. 检验六层证据链：wedge measurement、buyer-power validation、upstream exposure、upstream stress、policy targeting、policy effectiveness。
7. 在 `03_code/stata/main.do` 中组织正式 Stata 复现流程。
8. 把生成的表格和图输出到 `04_results/tables/` 与 `04_results/figures/`。
9. 在 `05_paper/main.tex` 中写论文，章节文件放在 `05_paper/sections/`。
10. 用 `scripts/build_paper.ps1` 编译论文。
11. 需要完整复现时，用 `scripts/run_pipeline.ps1` 串联 Stata 主程序和论文编译。

## 当前证据链

| 层级 | 问题 | 主要输出 |
|---|---|---|
| Layer 1 | 哪些行业作为中间品买方时 wedge 高？ | Table 2 |
| Layer 2 | wedge 是否像 buyer power，而不是纯测度噪声？ | Table 3A-3C |
| Layer 3 | 哪些上游行业销售给高-wedge 下游？ | exposure data |
| Layer 4 | 高 exposure 上游是否承受现金流、账期和投资压力？ | Table 4 |
| Layer 5 | 政策性信贷是否流向高 exposure 上游？ | Table 5 |
| Layer 6 | 政策性信贷是否改善融资、投资、R&D、生存，并是否带来 payment persistence？ | Table 6A-6B |

关键区分：Table 5 是 `policy targeting`，不能直接解释为政策有效；Table 6 才检验 `policy effectiveness` 和 trade-off。

## 常用命令

编译论文：

```powershell
.\scripts\build_paper.ps1
```

复制本地 engine 路径模板：

```powershell
Copy-Item .\scripts\engine_paths.example.ps1 .\scripts\engine_paths.local.ps1
```

完整复现：

```powershell
.\scripts\run_pipeline.ps1
```

## 版本控制原则

- 代码、论文、文献笔记、配置模板可以提交。
- 原始数据、私密数据、本地路径文件、缓存、临时日志不提交。
- 重要结果表格和图可以提交，但应能由代码重新生成。
