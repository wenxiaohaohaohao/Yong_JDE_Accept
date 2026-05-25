# Variable Dictionary

This file tracks variable definitions before they enter formal code and paper text.

| Variable | Level | Source | Definition | Construction Script | Status |
|---|---|---|---|---|---|
| `markup_i_t` | firm-year | tax survey / production data | Firm output markup following the Wang-style benchmark. Used as the main comparison mechanism, not the project's new mechanism. | `03_code/stata/02_construct_markup_credit_subsidy.do` | planned |
| `markup_u_t` | upstream industry-year | aggregated from firm-level markups | Industry-level own markup for upstream industry `u`; included to separate upstream exposure from Wang-style high-markup allocation. | `03_code/stata/02_construct_markup_credit_subsidy.do` | planned |
| `credit_subsidy_i_t` | firm-year | financial statements / tax survey | Preferential credit or financing subsidy measure. Exact construction follows the selected Wang replication design. | `03_code/stata/02_construct_markup_credit_subsidy.do` | planned |
| `policy_support_i_u_t` | firm-year or industry-year | credit subsidy, SCF proxy, policy labels | Broad policy support indicator or intensity for firm `i` in upstream industry `u`. Used in Table 5 and Table 6. | `03_code/stata/02_construct_markup_credit_subsidy.do`; `03_code/stata/05_regressions.do` | planned |
| `theta_x_d_t` | downstream industry-year | estimated production function | Revenue elasticity of intermediate inputs for downstream industry `d`. | `03_code/stata/03_construct_input_demand_wedge.do` | planned |
| `alpha_x_d_t` | downstream industry-year | tax survey / input expenditure shares | Intermediate input expenditure share in revenue for downstream industry `d`. | `03_code/stata/03_construct_input_demand_wedge.do` | planned |
| `psi_x_d_t` | downstream industry-year | constructed | Domestic intermediate input-demand wedge, `theta_x_d_t / alpha_x_d_t`. A high value is interpreted cautiously as an input-demand wedge until Table 3 validation supports buyer-power language. | `03_code/stata/03_construct_input_demand_wedge.do` | planned |
| `downstream_concentration_d_t` | downstream industry-year | industry sales / firm concentration | Concentration of downstream buyers. Used to validate the buyer-power interpretation of `psi_x_d_t`. | `03_code/stata/05_regressions.do` | planned |
| `large_buyer_share_d_t` | downstream industry-year | firm sales distribution | Share of purchases or output accounted for by large downstream buyers. | `03_code/stata/05_regressions.do` | planned |
| `supplier_fragmentation_d_t` | downstream industry-year | upstream supplier industry structure / IO mapping | Fragmentation of upstream suppliers serving downstream industry `d`. Higher fragmentation should strengthen buyer-power interpretation. | `03_code/stata/04_construct_upstream_exposure.do`; `03_code/stata/05_regressions.do` | planned |
| `payment_pressure_d_t` | downstream industry-year | accounts payable / receivable measures | Payment-delay or payment-pressure proxy associated with downstream buyers. | `03_code/stata/05_regressions.do` | planned |
| `z_d_u` | IO industry-pair | input-output table | Domestic intermediate transaction from upstream industry `u` to downstream industry `d`. Rows and columns must be checked against the raw IO convention before use. | `03_code/stata/04_construct_upstream_exposure.do` | planned |
| `omega_u_to_d` | IO industry-pair | constructed from `z_d_u` | Exposure weight: `z_d_u / sum_d z_d_u`. This is the share of upstream industry `u`'s sales going to downstream industry `d`. | `03_code/stata/04_construct_upstream_exposure.do` | planned |
| `upstream_exposure_u_t` | upstream industry-year | IO weights and downstream wedges | Exposure of upstream industry `u` to downstream input-demand wedges: `sum_d omega_u_to_d * (psi_x_d_t - 1)`. | `03_code/stata/04_construct_upstream_exposure.do` | planned |
| `ar_sales_i_t` | firm-year | balance sheet / income statement | Accounts receivable divided by sales. Main upstream payment-pressure outcome. | `03_code/stata/05_regressions.do` | planned |
| `ar_days_i_t` | firm-year | balance sheet / income statement | Accounts receivable days. Used to test whether exposure is associated with longer payment cycles. | `03_code/stata/05_regressions.do` | planned |
| `cashflow_assets_i_t` | firm-year | financial statements | Cash flow scaled by assets. Upstream stress and policy effectiveness outcome. | `03_code/stata/05_regressions.do` | planned |
| `financial_expense_assets_i_t` | firm-year | financial statements | Financial expenses scaled by assets. Financing-pressure outcome. | `03_code/stata/05_regressions.do` | planned |
| `investment_rate_i_t` | firm-year | fixed assets / capital stock | Investment rate. Real-side upstream stress and policy effectiveness outcome. | `03_code/stata/05_regressions.do` | planned |
| `rd_sales_i_t` | firm-year | R&D expenditure / sales | R&D intensity. Used in Table 6A if data coverage is sufficient. | `03_code/stata/05_regressions.do` | planned |
| `patent_count_i_t` | firm-year | patent data matched to firms | Innovation output. Optional Table 6A outcome. | `03_code/stata/05_regressions.do` | optional |
| `new_product_sales_i_t` | firm-year | survey output variable | New-product sales share. Optional innovation outcome. | `03_code/stata/05_regressions.do` | optional |
| `survival_i_t1` | firm-next-year | firm panel | Indicator for firm survival in the next period. Table 6A outcome. | `03_code/stata/05_regressions.do` | planned |
| `zombie_indicator_i_t` | firm-year | profitability / interest coverage | Zombie-firm proxy. Used to test whether policy support preserves weak firms. | `03_code/stata/05_regressions.do` | optional |
| `payment_persistence_i_t` | firm-year | receivable/payable dynamics | Persistence of long payment cycles after policy support. Table 6B trade-off outcome. | `03_code/stata/05_regressions.do` | planned |
| `buyer_dependence_i_t` | firm-year or industry-year | customer concentration / IO exposure | Dependence on large downstream buyers. Table 6B trade-off outcome if customer data or credible proxy exists. | `03_code/stata/05_regressions.do` | optional |

## Naming Rules

- Use `d` for downstream buyer industries and `u` for upstream supplier industries.
- Do not call `psi_x_d_t` a pure markdown unless Table 3 validation supports buyer-power interpretation.
- Construct upstream exposure with sales-destination weights from the upstream industry's perspective: `omega_u_to_d = z_d_u / sum_d z_d_u`.
- Keep Table 5 variables separate from Table 6 variables: targeting is allocation, effectiveness is outcome response.

Use this file as the single place to settle names, units, sample restrictions, winsorization rules, and industry mapping choices before implementing them in Stata.
