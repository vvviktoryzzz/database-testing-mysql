# Database Testing — MySQL

Учебный QA-проект по тестированию реляционной базы данных интернет-магазина с использованием MySQL.

## Цель проекта

Проверить корректность структуры базы данных, связей между таблицами и данных с помощью SQL-запросов.

## Database

Проект использует учебную реляционную базу данных интернет-магазина.

Основные таблицы:

* `customers` — информация о клиентах
* `products` — товары
* `orders` — заказы
* `order_items` — товары в заказах

## Что тестировалось

* Проверка структуры таблиц
* Проверка первичных и внешних ключей
* Проверка связей между таблицами
* Проверка наличия и корректности данных
* Поиск некорректных и отсутствующих значений
* Проверка уникальности данных
* Проверка связей через `JOIN`
* Фильтрация данных с помощью `WHERE`
* Сортировка данных с помощью `ORDER BY`
* Агрегация данных с помощью `COUNT`, `SUM`, `AVG`
* Группировка данных с помощью `GROUP BY`
* Фильтрация групп с помощью `HAVING`
* Использование `UNION`
* Positive / Negative scenarios

## Test Artifacts

* [Checklist](checklist.md)
* [Test Cases](test-cases.md)
* [Test Results](test-results.md)
* [SQL Queries](sql/test_queries.sql)
* [Database Structure](sql/create_tables.sql)

## Testing Approaches

* Database Testing
* Functional Testing
* Data Validation
* Data Integrity Testing
* Positive / Negative Testing

## Tools

* MySQL
* SQL
* Git
* GitHub

## Project Structure

```text
database-testing-mysql/
├── README.md
├── checklist.md
├── test-cases.md
├── test-results.md
└── sql/
    ├── create_tables.sql
    └── test_queries.sql
```
