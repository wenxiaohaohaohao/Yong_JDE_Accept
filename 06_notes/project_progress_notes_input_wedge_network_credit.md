# Project Progress Notes: Input-Demand Wedges, Upstream Exposure, and Credit Allocation

## 1. Current Core Position

The project should not be framed as “supply-chain finance corrects markdowns” at the outset. That statement is too strong and cannot be directly inferred from policy documents or from tax-survey data alone.

The current, safer, and more promising framing is:

> This paper studies whether preferential credit mitigates upstream financing and investment pressures induced by downstream buyer-power-related input-demand wedges in domestic production networks.

In Chinese:

> 本文研究政策性信贷是否缓解了由下游采购端楔子通过国内生产网络传导而来的上游融资与投资压力。

The project should proceed from a measurable mechanism:

```text
Downstream input-demand wedge
→ upstream exposure through IO linkages
→ upstream cash-flow / payment / investment pressure
→ preferential credit allocation
→ possible policy effectiveness
```

The first-stage claim should be modest:

```text
We estimate industry-level input-demand wedges and test whether upstream sectors exposed to high-wedge downstream buyers face greater financial and investment pressure, and whether preferential credit responds to this exposure.
```

Only after validation should the paper use stronger language such as buyer power, markdown, or supply-chain finance as second-best policy.

---

## 2. Key Conceptual Clarification: What Is the Wedge?

The object estimated from tax-survey data should initially be called:

```text
intermediate input-demand wedge
```

or, if domestic inputs can be separated from imported inputs:

```text
domestic intermediate input-demand wedge
```

It should not be immediately called pure markdown.

The basic formula is:

```text
psi^X_{d,t} = theta^{X,r}_{d,t} / alpha^X_{d,t}
```

where:

- `d` is the downstream industry, interpreted as an intermediate-input buyer;
- `theta^{X,r}_{d,t}` is the revenue elasticity of intermediate inputs;
- `alpha^X_{d,t}` is the intermediate-input expenditure share in revenue;
- `psi^X_{d,t} > 1` indicates an input-demand wedge in the industry’s purchasing margin.

Interpretation:

```text
An industry-level wedge is the wedge of that industry as a buyer of intermediate inputs, not as a seller of final output.
```

This distinction is crucial. The same industry can be both upstream and downstream depending on the transaction considered.

Example:

- Motor vehicles is downstream when it buys steel, rubber, and electronic components.
- Auto parts is upstream when it sells components to motor vehicle producers.
- Basic metals is upstream when it sells to machinery, automobiles, and construction.
- The same industry can be downstream in one IO relation and upstream in another.

Thus, “upstream” and “downstream” are not fixed labels attached to industries. They come from input-output relationships.

---

## 3. How to Distinguish Downstream and Upstream with IO Tables

Let:

- `d` = downstream industry, the buyer of intermediate inputs;
- `u` = upstream industry, the supplier of intermediate inputs;
- `Z_{d,u}` = the value of intermediate inputs that downstream industry `d` purchases from upstream industry `u`.

First estimate the input-demand wedge of each industry as a buyer:

```text
psi^X_{d,t}
```

Then map downstream wedges into upstream exposure using IO linkages:

```text
Exposure_{u,t} = sum_d omega_{u→d} * (psi^X_{d,t} - 1)
```

where:

```text
omega_{u→d} = Z_{d,u} / sum_{d'} Z_{d',u}
```

This weight measures:

```text
The share of upstream industry u's intermediate sales that goes to downstream industry d.
```

Important: weights must be normalized by upstream industry sales to downstream users, not by downstream input purchases.

Correct weight:

```text
omega_{u→d} = Z_{d,u} / sum_{d'} Z_{d',u}
```

Not the downstream input-share weight:

```text
Z_{d,u} / sum_{u'} Z_{d,u'}
```

The latter describes where downstream industry `d` sources its inputs from. It is useful for downstream input composition, but not for constructing upstream exposure.

---

## 4. Meaning of “High-Wedge Downstream Industries”

When we say:

```text
high-wedge downstream industries
```

we mean:

```text
industries that, when acting as buyers of intermediate inputs, have high estimated input-demand wedges.
```

This wedge is not automatically buyer power. It must be validated.

Validation asks whether high-wedge downstream industries also have observable features consistent with buyer power or payment frictions:

- higher downstream concentration;
- higher large-firm share;
- larger average firm size;
- more fragmented upstream supplier base;
- stronger accounts-payable occupation;
- longer payment periods;
- stronger net trade credit position.

This is not the main result. It is a necessary validation step.

If the estimated wedge is not correlated with these buyer-power primitives, it should not be interpreted as markdown or buyer power. It should remain a reduced-form input-demand wedge.

---

## 5. Relationship to Wang

Wang’s mechanism:

```text
high output markup sectors
→ sectors are too small in laissez-faire
→ preferential credit reduces effective capital cost
→ high-markup sectors expand
→ aggregate productivity / welfare improves
→ but zombie / selection distortion may increase
```

The current project’s mechanism:

```text
downstream input-demand wedge
→ upstream suppliers exposed to these buyers face cash-flow, payment, and investment pressure
→ exposed upstream sectors may be under-supported or constrained
→ preferential credit may respond to or mitigate this network-transmitted pressure
→ policy may generate weak-link relief, but possibly also payment persistence or supplier dependence
```

The distinction from Wang is not merely adding a network variable.

The key distinction is:

```text
Wang: Does preferential credit flow to high-output-markup sectors?
This project: Does preferential credit flow to and improve upstream sectors exposed to downstream input-demand wedges, beyond their own output markups?
```

Therefore, in policy-targeting regressions, the project must control for the upstream industry’s own output markup:

```text
CreditSubsidy_{i,u,t}
  = beta * Exposure_{u,t-1}
  + gamma * Markup_{u,t-1}
  + controls
  + FE
  + error
```

The coefficient on `Exposure` is meaningful only if it survives controlling for own-industry markup.

---

## 6. Relationship to Morlacco and Guigue

Morlacco and Guigue provide the theoretical and empirical template for input-market buyer power:

```text
input markdown = input revenue elasticity / input expenditure share
```

Their framework supports the idea that an input-market wedge can be measured from revenue elasticities and cost shares.

However, the current tax-survey data are weaker than the data used in that paper, especially if there are no domestic transaction prices, quantities, or buyer-supplier links.

Therefore, the project should say:

```text
We construct an intermediate input-demand wedge in the spirit of Morlacco and Guigue.
```

Not:

```text
We directly estimate pure domestic markdowns.
```

The wedge may reflect buyer power, but it may also capture:

- input quality differences;
- unobserved input prices;
- sourcing costs;
- demand shocks;
- input-augmenting productivity;
- measurement error;
- industry-level technology differences.

Buyer-power interpretation requires validation.

---

## 7. Relationship to Jones and Production Networks

Jones-type production network logic is essential because the project is not simply estimating industry-level wedges.

The network step is:

```text
local downstream wedge
→ upstream exposure through IO linkages
→ upstream financial and investment stress
→ possible aggregate weak-link consequences
```

The input-output table turns downstream buyer-side wedges into upstream exposure measures.

Without this step, the project is only about industry-level wedge measurement. With this step, the project becomes about production-network transmission.

---

## 8. Relationship to Liu

Liu’s mechanism:

```text
downstream financial friction
→ downstream demand for upstream intermediates is too low
→ upstream sectors may be under-expanded
→ upstream subsidies can be second-best
```

This project’s analogous mechanism:

```text
downstream buyer-power-related input-demand wedge
→ upstream suppliers face lower demand, worse payment terms, or weaker cash flow
→ upstream investment and supply capacity may be too low
→ preferential credit or supply-chain finance may mitigate upstream constraints
```

Important distinction:

```text
Liu’s friction is downstream financial friction.
This project’s friction is buyer-power-related input-demand wedge or payment friction.
```

The project can borrow the structure of “downstream friction propagates upstream,” but should not claim the same friction as Liu.

---

## 9. Six-Layer Empirical Structure

The project should have six layers, not five.

### Layer 1: Measure downstream input-demand wedges

Question:

```text
Which industries have high input-demand wedges when they act as buyers of intermediate inputs?
```

Main object:

```text
psi^X_{d,t} = theta^{X,r}_{d,t} / alpha^X_{d,t}
```

### Layer 2: Validate buyer-power interpretation

Question:

```text
Do high-wedge downstream industries look like industries with stronger buyer power or payment frictions?
```

Validation variables:

- downstream HHI;
- top-4 / top-10 sales share;
- average firm size;
- large-firm share;
- input-weighted supplier fragmentation;
- AP / cost;
- AP days;
- net trade credit.

### Layer 3: Construct upstream exposure

Question:

```text
Which upstream industries sell more to high-wedge downstream buyers?
```

Measure:

```text
Exposure_{u,t} = sum_d omega_{u→d} * (psi^X_{d,t} - 1)
```

### Layer 4: Test upstream stress

Question:

```text
Do high-exposure upstream firms or industries face stronger cash-flow, payment, and investment pressure?
```

Possible outcomes:

- cashflow / assets;
- AR / sales;
- AR days;
- financial expense / assets;
- investment rate;
- R&D / sales;
- exit probability;
- zombie indicator.

### Layer 5: Test policy targeting

Question:

```text
Does preferential credit flow more to high-exposure upstream sectors, beyond their own output markup?
```

Regression:

```text
CreditSubsidy_{i,u,t}
  = beta * Exposure_{u,t-1}
  + gamma * Markup_{u,t-1}
  + controls
  + FE
  + error
```

This is policy allocation, not policy effectiveness.

### Layer 6: Test policy effectiveness

Question:

```text
After receiving policy support, do high-exposure upstream firms improve in cash flow, investment, innovation, or survival?
```

Regression:

```text
Outcome_{i,u,t}
  = beta * PolicySupport_{i,t} * Exposure_{u,t-1}
  + controls
  + FE
  + error
```

This is the policy-effectiveness layer.

The paper should not stop at Layer 5. Layer 5 only says whether policy money goes to the relevant sectors. Layer 6 asks whether the policy actually improves firm outcomes.

---

## 10. What If Policy Does Not Respond to High-Exposure Upstream Sectors?

If high-exposure upstream sectors face more stress but do not receive more credit support, the project is not dead.

It becomes a diagnostic paper:

```text
There exists a network-transmitted upstream friction, but preferential credit does not systematically respond to it.
```

Policy implication:

```text
Existing industrial credit policy may underweight buyer-power-related upstream exposure and should pay more attention to upstream suppliers constrained by powerful downstream buyers.
```

Possible outcomes:

| Empirical result | Interpretation | Paper direction |
|---|---|---|
| Exposure predicts upstream stress; credit responds; outcomes improve | strongest policy-effectiveness paper | proceed to welfare / second-best policy |
| Exposure predicts upstream stress; credit does not respond | diagnostic policy-targeting gap | policy implication: government should attend to this friction |
| Exposure does not predict upstream stress | buyer-power network mechanism weak | change direction |
| Credit responds only to own markup | Wang mechanism dominates | project becomes Wang extension |
| Credit responds to centrality but not wedge | weak-link / network centrality paper | shift away from buyer power |

Thus, a zero result in the targeting regression does not automatically kill the project. It changes the interpretation.

---

## 11. Policy Targeting vs Policy Effectiveness

A key correction from the previous discussion:

```text
Testing whether credit flows to high-exposure upstream sectors is targeting, not effectiveness.
```

Policy targeting asks:

```text
Did the government or financial system put money in the places where this mechanism predicts pressure should be high?
```

Policy effectiveness asks:

```text
Once money arrived, did it improve upstream firms’ outcomes?
```

The paper should ultimately evaluate both.

Targeting regression:

```text
CreditSubsidy_{i,u,t}
  = beta * Exposure_{u,t-1}
  + gamma * Markup_{u,t-1}
  + controls
  + FE
  + error
```

Effectiveness regression:

```text
Outcome_{i,u,t}
  = beta * CreditSupport_{i,t} * Exposure_{u,t-1}
  + controls
  + firm FE
  + province-year FE
  + error
```

If `beta` in the effectiveness regression is positive for investment, cash flow, R&D, or survival, the project can claim policy effectiveness.

If policy support improves financing but AR days do not fall, the project can discuss the trade-off:

```text
weak-link relief vs payment-term persistence
```

---

## 12. Trade-Off Extension

A distinctive trade-off for this project is:

```text
network-level weak-link relief
vs.
buyer-power reinforcement / delayed-payment persistence
```

Possible positive effects of policy support:

- lower financing costs;
- better cash flow;
- higher investment;
- higher R&D;
- lower exit probability;
- better survival of upstream suppliers.

Possible costs or unresolved frictions:

- AR / sales does not decline;
- AR days remain high or increase;
- reliance on core buyers remains high;
- low-efficiency suppliers survive;
- zombie supplier ratio rises;
- payment terms are financialized rather than shortened.

The careful interpretation should be:

```text
If policy support improves financing outcomes but receivable days do not decline, this suggests that policy alleviates the liquidity consequences of buyer-side frictions without necessarily weakening the underlying payment relationship.
```

Do not write too early:

```text
Supply-chain finance strengthens buyer power.
```

That must be tested, not assumed.

---

## 13. Data and Measurement Priorities

### Must verify in tax-survey data

- firm ID and panel continuity;
- industry code, preferably four-digit;
- region / province;
- ownership / registration type;
- firm size;
- revenue / main business revenue;
- intermediate inputs or material costs;
- labor, wages, employment;
- fixed assets / capital;
- liabilities and interest-bearing debt;
- financial expenses or interest expense;
- accounts receivable;
- accounts payable;
- cash flow;
- investment;
- R&D if available;
- new product sales if available;
- exit / survival.

### Must combine with IO tables

Need IO table or use table at compatible industry level.

Must construct:

```text
Z_{d,u}
```

and then:

```text
omega_{u→d} = Z_{d,u} / sum_{d'} Z_{d',u}
```

Industry concordance between tax-survey industry codes and IO sectors is crucial.

---

## 14. Recommended Table Structure

### Table 1: Replicate Wang

Purpose:

```text
Do high-output-markup industries receive more credit subsidy?
```

This is a benchmark and comparison.

### Table 2: Input-demand wedge distribution

Purpose:

```text
Can we construct reasonable industry-level input-demand wedges?
```

Report:

- mean;
- median;
- p10 / p90;
- by industry;
- by year;
- stability over time.

### Table 3A: Wedge and downstream concentration

Purpose:

```text
Validate buyer-power interpretation using downstream concentration and buyer size.
```

### Table 3B: Wedge and input-weighted supplier fragmentation

Purpose:

```text
Validate buyer-power interpretation using the structure of upstream suppliers faced by the downstream industry.
```

### Table 3C: Wedge and payment pressure

Purpose:

```text
Validate payment-friction interpretation using AP days, AP / cost, or net trade credit.
```

### Table 4: Upstream exposure and upstream stress

Purpose:

```text
Do upstream sectors exposed to high-wedge downstream buyers face stronger cash-flow, payment, or investment pressure?
```

### Table 5: Policy targeting

Purpose:

```text
Does preferential credit flow to high-exposure upstream sectors beyond their own output markup?
```

### Table 6A: Policy effectiveness

Purpose:

```text
Does policy support improve cash flow, investment, R&D, survival of high-exposure upstream firms?
```

### Table 6B: Trade-off / payment persistence

Purpose:

```text
Does policy support improve financing while AR days or payment dependence persist?
```

---

## 15. Suggested Main Research Question

Chinese version:

```text
本文研究政策性信贷是否缓解了由下游采购端楔子通过生产网络传导而来的上游融资与投资压力。具体而言，本文首先估计行业作为中间品买方时的 input-demand wedge，并通过行业集中度、大买方规模、供应商分散度和账期压力验证其 buyer-power interpretation；随后利用投入产出表将下游买方 wedge 映射为上游行业暴露度，检验暴露于高-wedge 下游的上游企业是否面临更强现金流、账期和投资压力；最后考察政策性信贷是否流向这些高暴露上游部门，并进一步改善其融资、投资和生存表现。
```

English version:

```text
This paper studies whether preferential credit mitigates upstream financing and investment pressures induced by downstream buyer-power-related input-demand wedges in domestic production networks. We first estimate industry-level input-demand wedges when industries act as intermediate-input buyers and validate their buyer-power interpretation using downstream concentration, buyer size, supplier fragmentation, and payment-pressure measures. We then use input-output linkages to map downstream buyer wedges into upstream exposure and test whether exposed upstream firms face tighter cash-flow, payment, and investment constraints. Finally, we examine whether preferential credit is allocated toward these exposed upstream sectors and whether such credit support improves their real and financial outcomes.
```

---

## 16. Current Best Project Title

First-stage cautious title:

```text
Input-Demand Wedges, Upstream Exposure, and Credit Allocation in Domestic Production Networks
```

Chinese:

```text
国内生产网络中的投入需求楔子、上游暴露与信贷配置
```

Stronger title after validation:

```text
Buyer Power and Supply-Chain Finance in Domestic Production Networks
```

Chinese:

```text
供应链金融、买方势力与生产网络中的上游错配
```

Use the cautious title until the buyer-power interpretation and policy relevance are empirically supported.

---

## 17. Immediate Next Steps for Codex

1. Clean and document the tax-survey data variables.
2. Construct firm-level revenue, input expenditure, labor, capital, and debt variables.
3. Construct Wang-style markup and credit subsidy.
4. Replicate Wang-style relationship between industry markup and credit subsidy.
5. Estimate intermediate input revenue elasticity and construct input-demand wedge.
6. Aggregate wedge to downstream industry-year level.
7. Build industry-level buyer-power validation variables:
   - downstream concentration;
   - large-firm share;
   - average buyer size;
   - payment-pressure variables.
8. Build IO concordance between tax-survey industries and IO sectors.
9. Construct upstream exposure:

```text
Exposure_{u,t} = sum_d omega_{u→d} * (psi^X_{d,t} - 1)
```

10. Test whether exposure predicts upstream stress.
11. Test whether credit subsidy responds to upstream exposure after controlling for own markup.
12. If results support the mechanism, proceed to policy-effectiveness regressions.

---

## 18. Final Bottom Line

The project should not be framed as simply estimating industry markdowns.

The real project is:

```text
Estimate industries’ input-demand wedges as buyers,
use IO tables to identify which upstream sectors are exposed to high-wedge buyers,
test whether these upstream sectors suffer cash-flow, payment, and investment pressure,
and test whether preferential credit targets and mitigates those pressures.
```

The key methodological move is:

```text
from downstream buyer wedge to upstream exposure through production networks
```

This is what makes the project distinct from Wang and potentially valuable as a policy paper.
