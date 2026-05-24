version 18
clear all
set more off

/*
Main Stata entry point for the project.

Recommended use:
  StataMP-64.exe /e do 03_code/stata/main.do

This file is intentionally conservative at project setup time. Add data
construction, baseline regressions, robustness checks, and table exports here
once the data paths and variable definitions are fixed.
*/

local project_root : env PROJECT_ROOT
if "`project_root'" == "" {
  local project_root "."
}

capture mkdir "`project_root'/04_results"
capture mkdir "`project_root'/04_results/tables"
capture mkdir "`project_root'/04_results/figures"
capture mkdir "`project_root'/04_results/logs"

capture log close _all
log using "`project_root'/04_results/logs/stata_main.log", replace text

display "Project root: `project_root'"

do "`project_root'/03_code/stata/01_clean_tax_survey.do"
do "`project_root'/03_code/stata/02_construct_markup_credit_subsidy.do"
do "`project_root'/03_code/stata/03_construct_input_demand_wedge.do"
do "`project_root'/03_code/stata/04_construct_upstream_exposure.do"
do "`project_root'/03_code/stata/05_regressions.do"

display "Stata main pipeline completed."

log close
