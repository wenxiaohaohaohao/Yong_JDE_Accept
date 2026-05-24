# Buyer Power and Supply-Chain Finance Project

本目录是一个新的可复现研究项目工作区。当前项目主题按现有 summary 和文献文件推断为：

> Supply-chain finance、buyer power、domestic production networks 与 upstream misallocation。

## 当前已有材料

当前已有资料已按用途放入对应目录：

- `01_literature/JonesAEJM2011.pdf`
- `01_literature/main-jie-revision_new.pdf`
- `01_literature/Market_Power_Inputs_2023.pdf`
- `01_literature/markupsmisallocation.pdf`
- `01_literature/shanghai200.pdf`
- `06_notes/supply_chain_buyer_power_project_summary.pdf`
- `06_notes/supply_chain_buyer_power_project_summary.tex`

注意：`06_notes/supply_chain_buyer_power_project_summary.tex` 目前在终端读取时出现编码异常。为避免进一步破坏，暂时只把它作为既有参考材料保留；新的论文入口是 `05_paper/main.tex`。

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
2. 在 `03_code/stata/main.do` 中组织正式 Stata 复现流程。
3. 把生成的表格和图输出到 `04_results/tables/` 与 `04_results/figures/`。
4. 在 `05_paper/main.tex` 中写论文，章节文件放在 `05_paper/sections/`。
5. 用 `scripts/build_paper.ps1` 编译论文。
6. 需要完整复现时，用 `scripts/run_pipeline.ps1` 串联 Stata 主程序和论文编译。

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
