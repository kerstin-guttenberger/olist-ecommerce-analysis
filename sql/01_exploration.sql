-- Q1: How large is this dataset?
SELECT COUNT(*) AS total_orders FROM orders;

-- Q2: What time period does it cover?
SELECT MIN(order_purchase_timestamp) AS first_order,
       MAX(order_purchase_timestamp) AS last_order
FROM orders;

-- Q3: How many unique buyers?
SELECT COUNT(DISTINCT customer_unique_id) AS unique_customers FROM customers;

-- Q4: Data quality — orders missing a delivery date
SELECT COUNT(*) AS missing_delivery
FROM orders WHERE order_delivered_customer_date IS NULL;

-- Q5: Top 10 categories
WITH translated AS (
    SELECT p.product_id,
           COALESCE(c.product_category_name_english, p.product_category_name) AS category
    FROM products p
    LEFT JOIN category_translation c USING (product_category_name)
)
SELECT category, COUNT(*) AS product_count
FROM translated
GROUP BY category ORDER BY product_count DESC LIMIT 10;