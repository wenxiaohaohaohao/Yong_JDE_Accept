# Variable Dictionary

This file tracks variable definitions before they enter formal code and paper text.

| Variable | Level | Source | Definition | Construction Script | Status |
|---|---|---|---|---|---|
| `input_demand_wedge` | industry-year or firm-year | TBD | Domestic intermediate input-demand wedge. | `03_code/stata/03_construct_input_demand_wedge.do` | planned |
| `upstream_exposure` | industry-year or firm-year | TBD | Exposure to downstream sectors with high input-demand wedge. | `03_code/stata/04_construct_upstream_exposure.do` | planned |
| `markup` | firm-year or sector-year | TBD | Markup measure following the selected baseline paper. | `03_code/stata/02_construct_markup_credit_subsidy.do` | planned |
| `credit_subsidy` | firm-year or sector-year | TBD | Preferential credit or financing support measure. | `03_code/stata/02_construct_markup_credit_subsidy.do` | planned |
| `accounts_receivable` | firm-year | TBD | Receivables or payment-delay proxy. | TBD | planned |

Use this file as the single place to settle names, units, sample restrictions, winsorization rules, and industry mapping choices before implementing them in Stata.

