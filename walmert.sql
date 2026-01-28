-- BUSINESS QUERY

-- “Which products generate high sales and how much profit do they actually bring?”
SELECT
    category,
    SUM(total) AS total_sales,
    SUM(profit_margin) AS total_profit,
    ROUND(AVG(profit_margin), 2) AS avg_profit_margin
FROM walmart_clean
GROUP BY category
ORDER BY total_sales DESC;

--  “Which categories generate high sales and how much profit do they actually bring?”

select distinct category,max(Total) as highest_sales, max(profit_margin) from walmart_clean group by category order by highest_sales desc;

-- Which categories actually drive the business in terms of revenue and profit efficiency?
select
 category,sum(Total) Total_Sales,
 round(avg(profit_margin),2) avg_Profit_margin, 
 sum(quantity) Total_quantity 
from walmart_clean group by category order by Total_Sales desc;

-- High Sales Can Make Profit or Not
select category,sum(Total) total_sales, round(sum(Total * profit_margin / 100),2) Estimated_profit
from walmart_clean
group by category
order by total_sales desc;

-- Which branches are healthy, and which need intervention?
SELECT
    Branch,
    City,
    SUM(Total) AS total_sales,
    ROUND(AVG(profit_margin), 2) AS avg_margin,
    ROUND(AVG(rating), 2) AS avg_rating
FROM walmart_clean
GROUP BY Branch, City
ORDER BY total_sales DESC;

-- Which categories look successful but damage profitability?
SELECT
    category,
    SUM(Total) AS total_sales,
    ROUND(AVG(profit_margin), 2) AS avg_profit_margin
FROM walmart_clean
GROUP BY category
HAVING SUM(Total) > (
    SELECT AVG(category_sales)
    FROM (
        SELECT SUM(Total) AS category_sales
        FROM walmart_clean
        GROUP BY category
    ) AS t
)
ORDER BY avg_profit_margin ASC;


-- How do customers prefer to pay, and which methods bring higher value?
SELECT
    payment_method,
    COUNT(invoice_id) AS transactions,
    SUM(Total) AS total_sales,
    ROUND(AVG(Total), 2) AS avg_bill_value
FROM walmart_clean
GROUP BY payment_method
ORDER BY transactions DESC;


-- Does better customer experience actually lead to better business outcomes?
SELECT
    category,
    ROUND(AVG(rating), 2) AS avg_rating,
    SUM(Total) AS total_sales
FROM walmart_clean
GROUP BY category
ORDER BY avg_rating DESC;

-- Is the business improving or deteriorating over time?
SELECT
    date,
    SUM(Total) AS daily_sales,
    ROUND(AVG(profit_margin), 2) AS avg_margin
FROM walmart_clean
GROUP BY date
ORDER BY date;
