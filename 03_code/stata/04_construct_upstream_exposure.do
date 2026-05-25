version 18

/*
Step 04: construct IO-based upstream exposure.

Purpose:
  - Map downstream buyer-side input-demand wedges into upstream supplier
    exposure using domestic input-output linkages.
  - Treat each industry as upstream or downstream depending on the IO pair, not
    as a fixed label.

Core objects:
  - z_d_u: IO transaction from upstream industry u to downstream industry d.
  - omega_u_to_d = z_d_u / sum_d z_d_u.
  - upstream_exposure_u_t = sum_d omega_u_to_d * (psi_x_d_t - 1).

Weight rule:
  - Use the share of upstream industry u's sales going to each downstream
    industry d.
  - Do not use z_d_u / sum_u z_d_u for upstream exposure; that is the
    downstream industry's input-source composition.

Planned outputs:
  - IO concordance table linking tax-survey industries to IO industries.
  - industry-pair weights omega_u_to_d.
  - upstream industry-year exposure upstream_exposure_u_t.
  - optional supplier_fragmentation_d_t for Table 3 validation.

Table mapping:
  - Table 3B/3C: supplier-fragmentation validation inputs.
  - Table 4: upstream exposure and upstream stress.
  - Table 5: policy targeting by upstream exposure.
  - Table 6A-6B: policy effectiveness and trade-off heterogeneity by exposure.
*/

display as text "Step 04: construct IO-based upstream exposure."
display as text "Status: placeholder. Add IO concordance and exposure code after downstream wedges are available."
