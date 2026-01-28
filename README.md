# Walmart Sales & Profitability Analysis 

**SQL Business Analytics Project**

## 📌 Project Overview  
This project analyzes Walmart transactional data to evaluate business performance beyond surface-level sales figures.  
The core objective is to identify where revenue actually translates into profit, uncover hidden margin risks, and assess operational health across categories and branches.

Rather than focusing on vanity metrics (high sales alone), this analysis emphasizes sustainability, efficiency, and decision-ready insights—the way real businesses evaluate performance.

## 🎯 Business Objectives  
The analysis is designed to answer the following business-critical questions:

- Which product categories generate the highest revenue?  
- Do high-selling categories actually generate profit?  
- Which categories appear successful but hurt long-term profitability?  
- Which branches are healthy, and which require intervention?  
- How do customer payment behaviors impact revenue quality?  
- Does customer satisfaction align with sales performance?  
- Is the business improving or showing early signs of risk over time?

## 📂 Dataset Description  
**Table**: `walmart_clean`  
Each row represents one customer transaction.

### Key Columns  
| Column | Description |
|--------|-------------|
| category | Product category |
| Branch | Store branch |
| City | Store location |
| Total | Total transaction value |
| quantity | Units sold |
| profit_margin | Profit margin (%) |
| rating | Customer satisfaction rating |
| payment_method | Payment type |
| date | Transaction date |
| invoice_id | Unique transaction identifier |

## 🧠 Analytical Principles Used  
This project follows business-first analytics, not query memorization.

**Key principles**:  
- **Scale vs Efficiency**: Sales measure scale; margin measures efficiency  
- **Profit ≠ Margin**: Profit is calculated, margin is evaluated  
- **Consistency over spikes**: Sustainable revenue beats one-time extremes  
- **Comparison creates insight**: Categories and branches are evaluated relative to each other  
- **Decisions over descriptions**: Every query supports an action

## 📊 Key Analyses & Insights  

### 1️⃣ Category Revenue & Efficiency Analysis  
**Question**:  
Which categories actually drive the business in terms of revenue and efficiency?

**Approach**:  
- Total revenue using `SUM(Total)`  
- Demand using `SUM(quantity)`  
- Efficiency using `AVG(profit_margin)`

**Insight**:  
Some categories generate high revenue through volume but operate on thinner margins, while others generate lower sales with stronger efficiency. Revenue alone is not a reliable indicator of category health.

**Business Value**:  
Supports smarter inventory allocation and promotion strategy.

### 2️⃣ Do High Sales Translate Into Profit?  
**Question**:  
Are high-revenue categories actually profitable?

**Approach**:  
- Estimated profit calculated using `SUM(Total * profit_margin / 100)`

**Insight**:  
Several high-selling categories contribute disproportionately low profit, indicating pricing pressure or high operational costs.

**Business Value**:  
Prevents prioritizing revenue at the expense of long-term profitability.

### 3️⃣ False Winners: High Sales, Low Margins  
**Question**:  
Which categories look successful but damage profitability?

**Approach**:  
- Identified categories with above-average sales  
- Ranked them by lowest average profit margin

**Insight**:  
Certain categories exceed average sales but operate at the weakest margins, acting as false winners that hide financial risk.

**Business Value**:  
Helps leadership avoid scaling loss-prone revenue streams.

### 4️⃣ Branch-Level Business Health  
**Question**:  
Which branches are healthy, and which require intervention?

**Metrics Used**:  
- Total sales (scale)  
- Average profit margin (efficiency)  
- Average customer rating (experience)

**Insight**:  
Some branches achieve strong revenue but show weaker margins or ratings, suggesting operational or service-level issues rather than demand problems.

**Business Value**:  
Enables targeted branch-level improvements instead of blanket strategies.

### 5️⃣ Customer Payment Behavior  
**Question**:  
How do customers prefer to pay, and which methods generate higher value?

**Metrics Used**:  
- Transaction count  
- Total sales  
- Average bill value

**Insight**:  
While some payment methods dominate transaction volume, others show higher average spend per transaction, indicating different customer segments and value patterns.

**Business Value**:  
Supports optimization of payment partnerships and checkout strategy.

### 6️⃣ Customer Experience vs Revenue  
**Question**:  
Does better customer experience align with stronger business outcomes?

**Approach**:  
- Compared average ratings with total sales by category

**Insight**:  
Categories with higher customer ratings generally align with stronger sales, though the relationship reflects association rather than direct causation.

**Business Value**:  
Reinforces the importance of customer experience as a revenue support factor.

### 7️⃣ Business Performance Over Time  
**Question**:  
Is the business improving or deteriorating?

**Approach**:  
- Daily sales trends  
- Daily average profit margin trends

**Insight**:  
Even when revenue appears stable, declining margins over time can signal early financial risk.

**Business Value**:  
Enables proactive decision-making before profitability erosion becomes visible in revenue.

## 📌 Key Takeaways  
- High sales alone do not indicate business success  
- Profitability depends on both scale and efficiency  
- Margin analysis reveals risks hidden by revenue  
- Some high-performing categories are financially fragile  
- Branch-level insights enable focused operational action  
- Trend analysis is critical for long-term sustainability

## 🛠 Tools & Skills Demonstrated  
- SQL (aggregation, grouping, subqueries, HAVING clauses)  
- Business performance analysis  
- Profitability and efficiency evaluation  
- Data storytelling and decision framing

## 🚀 Conclusion  
This project demonstrates how SQL can be used to move beyond surface-level reporting and deliver decision-ready business insights.  
By focusing on profit translation, margin risk, and operational health, the analysis helps identify where Walmart should invest, optimize, or intervene to support sustainable growth.
