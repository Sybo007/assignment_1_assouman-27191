SELECT oi.order_item_id, p.product_name, p.category, p.price, oi.quantity
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id;

SELECT c.customer_name, o.order_id, o.order_date
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

WITH customer_totals AS (
  SELECT c.customer_id, c.customer_name,
         SUM(oi.quantity * p.price) AS total_spend
  FROM customers c
  JOIN orders o ON c.customer_id = o.customer_id
  JOIN order_items oi ON o.order_id = oi.order_id
  JOIN products p ON oi.product_id = p.product_id
  GROUP BY c.customer_id, c.customer_name
)
SELECT * FROM customer_totals
WHERE total_spend > (SELECT AVG(total_spend) FROM customer_totals);

SELECT c.customer_name,
       SUM(oi.quantity * p.price) AS total_spend,
       RANK() OVER (ORDER BY SUM(oi.quantity * p.price) DESC) AS spend_rank
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY c.customer_name;

SELECT c.customer_name, o.order_id, o.order_date,
       ROW_NUMBER() OVER (PARTITION BY c.customer_id ORDER BY o.order_date) AS order_number
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;

SELECT o.order_date,
       SUM(oi.quantity * p.price) AS daily_revenue,
       SUM(SUM(oi.quantity * p.price)) OVER (ORDER BY o.order_date) AS running_total
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY o.order_date
ORDER BY o.order_date;

SELECT c.customer_name, o.order_id, o.order_date,
       LAG(o.order_date) OVER (PARTITION BY c.customer_id ORDER BY o.order_date) AS prev_order_date,
       o.order_date - LAG(o.order_date) OVER (PARTITION BY c.customer_id ORDER BY o.order_date) AS days_between
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;


