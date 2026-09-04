```sql
-- SQL queries for database testing
-- Online store database

-- =========================================
-- 1. Проверка данных клиентов
-- =========================================

-- Все клиенты
SELECT *
FROM customers;

-- Клиенты из определённого города
SELECT *
FROM customers
WHERE city = 'Berlin';

-- Проверка клиентов без email
SELECT *
FROM customers
WHERE email IS NULL;


-- =========================================
-- 2. Проверка данных товаров
-- =========================================

-- Все товары
SELECT *
FROM products;

-- Товары с ценой больше 100
SELECT *
FROM products
WHERE price > 100;

-- Товары с некорректной или отсутствующей ценой
SELECT *
FROM products
WHERE price IS NULL
   OR price <= 0;


-- =========================================
-- 3. Проверка заказов
-- =========================================

-- Все заказы
SELECT *
FROM orders;

-- Заказы определённого статуса
SELECT *
FROM orders
WHERE status = 'Completed';

-- Поиск заказов без клиента
SELECT *
FROM orders
WHERE customer_id IS NULL;


-- =========================================
-- 4. Проверка связей между таблицами
-- =========================================

-- Заказы и соответствующие клиенты
SELECT
    orders.order_id,
    customers.first_name,
    customers.last_name,
    orders.order_date,
    orders.status
FROM orders
JOIN customers
    ON orders.customer_id = customers.customer_id;


-- Товары в заказах
SELECT
    order_items.order_id,
    products.product_name,
    order_items.quantity,
    products.price
FROM order_items
JOIN products
    ON order_items.product_id = products.product_id;


-- =========================================
-- 5. Проверка количества заказов клиентов
-- =========================================

SELECT
    customer_id,
    COUNT(order_id) AS order_count
FROM orders
GROUP BY customer_id;


-- =========================================
-- 6. Проверка общей стоимости товаров
-- =========================================

SELECT
    product_id,
    SUM(quantity) AS total_quantity
FROM order_items
GROUP BY product_id;


-- =========================================
-- 7. Поиск дубликатов email
-- =========================================

SELECT
    email,
    COUNT(*) AS email_count
FROM customers
GROUP BY email
HAVING COUNT(*) > 1;


-- =========================================
-- 8. Поиск товаров без категории
-- =========================================

SELECT *
FROM products
WHERE category IS NULL;


-- =========================================
-- 9. Проверка количества товаров в каждом заказе
-- =========================================

SELECT
    order_id,
    SUM(quantity) AS total_items
FROM order_items
GROUP BY order_id;


-- =========================================
-- 10. UNION
-- =========================================

SELECT first_name AS name
FROM customers

UNION

SELECT product_name AS name
FROM products;
```
