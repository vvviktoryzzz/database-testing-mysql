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
* Проверка обязательных полей `NOT NULL`
* Проверка уникальности данных
* Проверка связей между таблицами
* Проверка наличия и корректности данных
* Поиск некорректных и отсутствующих значений
* Проверка связей через `JOIN`
* Фильтрация данных с помощью `WHERE`
* Агрегация данных с помощью `COUNT`, `SUM`, `AVG`
* Группировка данных с помощью `GROUP BY`
* Фильтрация групп с помощью `HAVING`
* Использование `UNION`
* Positive / Negative scenarios

## Test Results

Всего выполнено **20 test cases**:

* **20 PASS**
* **0 FAIL**

Основные результаты:

* `customers` — 4 записи
* `products` — 5 записей
* `orders` — 4 записи
* `order_items` — 6 записей
* Дубликатов email не обнаружено
* Некорректных цен не обнаружено
* Товаров без категории не обнаружено
* Заказов без клиента не обнаружено
* Некорректных значений `quantity` не обнаружено
* Все связи между таблицами корректны
* Средняя цена товаров — `64.99`

## Test Artifacts

* [Checklist](checklist.md)
* [Test Cases](test-cases.md)
* [Test Results](test-results.md)
* [Database Structure](sql/create_tables.sql)
* [Test Data](sql/test_data.sql)
* [SQL Queries](sql/test_queries.sql)

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
    ├── test_data.sql
    └── test_queries.sql
```
