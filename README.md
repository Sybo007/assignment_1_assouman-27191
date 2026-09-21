# Assignment 1 - Sunrise Supermarket

Name:Assouman Sibomana  
Student ID: 27191 
DBMS Used:PostgreSQL  

---

Summary
I created a database for Sunrise Supermarket with tables for customers, products, orders, and order_items.  
I inserted sample data (5 customers, 8 products across 3 categories, 15 orders, 25 order items).  
I wrote queries using JOINs, CTEs, and window functions to analyze customer spending and sales trends.  

---

How to Run
1. Open PostgreSQL (pgAdmin or psql).
2. Run `schema.sql` to create tables.
3. Run `inserts.sql` to add sample data.
4. Run `queries.sql` to execute analysis queries.
5. View results in PostgreSQL client.

---

Business Scenario
Sunrise Supermarket sells products to customers, who place orders containing one or more items.  
Management wants insights into:
- Who their customers are  
- What they buy  
- How sales trend over time  

---

Business Interpretation
Ranking shows top spenders (valuable customers).

Running totals reveal revenue growth trends.

Days‑between‑orders highlights customer purchase frequency.

Challenges & Resolutions
Challenge: Customers with no orders.
Resolution: Used LEFT JOIN.

Challenge: Calculating spend across multiple tables.
Resolution: Used CTEs and window functions.

Challenge: Creating realistic sample data.
Resolution: Populated with varied categories, dates, and quantities.


