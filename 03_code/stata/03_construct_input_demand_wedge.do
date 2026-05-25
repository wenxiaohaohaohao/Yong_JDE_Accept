version 18

/*
Step 03: construct downstream domestic input-demand wedges.

Purpose:
  - Estimate the wedge for each industry when it acts as a buyer of
    intermediate inputs.
  - Keep the variable name cautious: input-demand wedge, not pure markdown,
    unless the buyer-power validation tests support that interpretation.

Core objects:
  - theta_x_d_t: revenue elasticity of intermediate inputs for downstream
    industry d.
  - alpha_x_d_t: intermediate input expenditure share in revenue for downstream
    industry d.
  - psi_x_d_t = theta_x_d_t / alpha_x_d_t.

Planned outputs:
  - downstream industry-year data with theta_x_d_t, alpha_x_d_t, psi_x_d_t.
  - diagnostic distribution tables for psi_x_d_t.

Table mapping:
  - Table 2: input-demand wedge distribution and industry heterogeneity.
  - Table 3A-3C: buyer-power validation, after merging concentration,
    buyer-size, supplier-fragmentation, and payment-pressure variables.

Important distinction:
  - This step measures downstream buyer-side wedges.
  - It does not construct upstream exposure; that belongs to Step 04.
*/

display as text "Step 03: construct downstream domestic input-demand wedges."
display as text "Status: placeholder. Add production-function and expenditure-share code after data paths are fixed."
