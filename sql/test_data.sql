```sql
-- Test data for QA database testing project
-- Online store database

-- =========================================
-- Customers
-- =========================================

INSERT INTO customers (customer_id, first_name, last_name, email, city)
VALUES
(1, 'Anna', 'Schmidt', 'anna.schmidt@example.com', 'Berlin'),
(2, 'Max', 'Müller', 'max.mueller@example.com', 'Hamburg'),
(3, 'Laura', 'Fischer', 'laura.fischer@example.com', 'Berlin'),
(4, 'David', 'Weber', 'david.weber@example.com', 'Munich');


-- =========================================
-- Products
-- =========================================

INSERT INTO products (product_id, product_name, category, price)
VALUES
(1, 'Wireless Headphones', 'Electronics', 79.99),
(2, 'Mechanical Keyboard', 'Electronics', 129.99),
(3, 'Coffee Mug', 'Home', 14.99),
(4, 'Desk Lamp', 'Home', 39.99),
(5, 'Backpack', 'Accessories', 59.99);


-- =========================================
-- Orders
-- =========================================

INSERT INTO orders (order_id, customer_id, order_date, status)
VALUES
(1, 1, '2026-08-20', 'Completed'),
(2, 2, '2026-08-21', 'Processing'),
(3, 1, '2026-08-22', 'Completed'),
(4, 3, '2026-08-23', 'Cancelled');


-- =========================================
-- Order items
-- =========================================

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES
(1, 1, 1, 1),
(2, 1, 3, 2),
(3, 2, 2, 1),
(4, 2, 5, 1),
(5, 3, 4, 1),
(6, 4, 3, 3);
```
