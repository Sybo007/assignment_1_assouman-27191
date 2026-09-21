INSERT INTO customers (customer_name, email, city)
VALUES ('Alice', 'alice@email.com', 'Kigali'),
       ('Bob', 'bob@email.com', 'Musanze'),
       ('Claire', 'claire@email.com', 'Huye'),
       ('David', 'david@email.com', 'Rubavu'),
       ('Eva', 'eva@email.com', 'Kigali');

INSERT INTO products (product_name, category, price)
VALUES ('Rice', 'Grains', 2.50),
       ('Beans', 'Grains', 3.00),
       ('Milk', 'Dairy', 1.20),
       ('Cheese', 'Dairy', 4.50),
       ('Apple', 'Fruit', 0.80),
       ('Banana', 'Fruit', 0.60),
       ('Orange', 'Fruit', 1.00),
       ('Yogurt', 'Dairy', 2.00);

INSERT INTO orders (customer_id, order_date) VALUES
(1, '2026-09-01'),
(2, '2026-09-02'),
(3, '2026-09-03'),
(4, '2026-09-04'),
(5, '2026-09-05'),
(1, '2026-09-06'),
(2, '2026-09-07'),
(3, '2026-09-08'),
(4, '2026-09-09'),
(5, '2026-09-10'),
(1, '2026-09-11'),
(2, '2026-09-12'),
(3, '2026-09-13'),
(4, '2026-09-14'),
(5, '2026-09-15');


INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 2),   -- Alice buys 2 Rice
(1, 5, 5),   -- Alice buys 5 Apples
(2, 2, 3),   -- Bob buys 3 Beans
(2, 6, 6),   -- Bob buys 6 Bananas
(3, 3, 4),   -- Claire buys 4 Milk
(3, 7, 2),   -- Claire buys 2 Oranges
(4, 4, 1),   -- David buys 1 Cheese
(4, 8, 3),   -- David buys 3 Yogurts
(5, 1, 1),   -- Eva buys 1 Rice
(5, 2, 2),   -- Eva buys 2 Beans
(6, 3, 5),   -- Alice again buys 5 Milk
(7, 5, 10),  -- Bob buys 10 Apples
(8, 6, 4),   -- Claire buys 4 Bananas
(9, 7, 3),   -- David buys 3 Oranges
(10, 8, 2),  -- Eva buys 2 Yogurts
(11, 1, 3),  -- Alice buys 3 Rice
(12, 2, 1),  -- Bob buys 1 Beans
(13, 3, 2),  -- Claire buys 2 Milk
(14, 4, 2),  -- David buys 2 Cheese
(15, 5, 4),  -- Eva buys 4 Apples
(11, 6, 2),  -- Alice adds 2 Bananas
(12, 7, 1),  -- Bob adds 1 Orange
(13, 8, 5),  -- Claire adds 5 Yogurts
(14, 1, 2),  -- David adds 2 Rice
(15, 2, 3);  -- Eva adds 3 Beans
