# Test Results — Database Testing

## Test Execution Summary

| Test Case | Проверка                                     | Результат |
| --------- | -------------------------------------------- | --------- |
| TC-DB-001 | Данные в `customers`                         | PASS      |
| TC-DB-002 | Количество записей в таблицах                | PASS      |
| TC-DB-003 | Фильтрация клиентов по городу                | PASS      |
| TC-DB-004 | Уникальность email                           | PASS      |
| TC-DB-005 | Некорректная цена товара                     | PASS      |
| TC-DB-006 | Товары без категории                         | PASS      |
| TC-DB-007 | Заказы без клиента                           | PASS      |
| TC-DB-008 | Связь `orders` → `customers`                 | PASS      |
| TC-DB-009 | Связь `order_items` → `products`             | PASS      |
| TC-DB-010 | Количество заказов клиента                   | PASS      |
| TC-DB-011 | Общее количество заказанных товаров          | PASS      |
| TC-DB-012 | Количество товаров в заказе                  | PASS      |
| TC-DB-013 | Корректность `quantity`                      | PASS      |
| TC-DB-014 | Средняя цена товаров                         | PASS      |
| TC-DB-015 | Статусы заказов                              | PASS      |
| TC-DB-016 | Primary Key в `customers`                    | PASS      |
| TC-DB-017 | Primary Key / Foreign Key в `orders`         | PASS      |
| TC-DB-018 | Primary Key / Foreign Key в `order_items`    | PASS      |
| TC-DB-019 | Primary Key / обязательные поля в `products` | PASS      |
| TC-DB-020 | `UNION`                                      | PASS      |

## Database Statistics

| Table         | Records |
| ------------- | ------: |
| `customers`   |       4 |
| `products`    |       5 |
| `orders`      |       4 |
| `order_items` |       6 |

## Data Validation Results

### Customers

* Клиентов: **4**
* Клиентов из Berlin: **2**
* Дубликатов email: **0**
* Клиентов без email: **0**

**Result: PASS**

### Products

* Товаров: **5**
* Товаров с некорректной ценой: **0**
* Товаров без категории: **0**
* Средняя цена: **64.99**

**Result: PASS**

### Orders

* Заказов: **4**
* Заказов без клиента: **0**
* Используемые статусы:

  * `Completed`
  * `Processing`
  * `Cancelled`

**Result: PASS**

### Order Items

* Позиций заказов: **6**
* Позиций с некорректным `quantity`: **0**
* Несуществующих `product_id`: **0**
* Несуществующих `order_id`: **0**

**Result: PASS**

## Relationship Validation

### Orders → Customers

Все 4 заказа успешно связаны с существующими клиентами.

**Result: PASS**

### Order Items → Products

Все 6 позиций заказов успешно связаны с существующими товарами.

**Result: PASS**

## Database Constraints

Проверены:

* Primary Key в основных таблицах
* Foreign Key между связанными таблицами
* `NOT NULL` для обязательных полей
* `UNIQUE` для email
* Тип данных `DECIMAL(10,2)` для цены

**Result: PASS**

## Final Result

**Total Test Cases:** 20

**PASS:** 20

**FAIL:** 0

**Overall Result:** PASS
