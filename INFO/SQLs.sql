
-- БАЗА ДАНИХ
-- Можливість створення БД з метою уникнення некваліфікованих
-- дій, краще залишити за розробником.
-- Тому такий функціонал у додатку не прописуємо.
-- Можемо створити БД через візуальний інструмент, наприклад,
-- MySQL Workbench.
CREATE DATABASE demo_db;

-- ТАБЛИЦІ
-- Можливість створення таблиць БД, з метою уникнення некваліфікованих
-- дій, краще залишити за розробником.
-- Тому такий функціонал у додатку не прописуємо.
-- Попередньо, необхідно спроектувати таблиці та їх зв'язки,
-- на основі сутностей реального світу.
-- Можемо створити таблиці БД через візуальний інструмент, наприклад,
-- MySQL Workbench.

CREATE TABLE IF NOT EXISTS employees
( id INTEGER NOT NULL AUTO_INCREMENT,
  name VARCHAR(128) NOT NULL,
  position VARCHAR(128) NOT NULL,
  phone VARCHAR(128) NOT NULL,
  PRIMARY KEY (id)
);

--Выборка всех сотрудников:
  SELECT * FROM employees;

--Выборка сотрудника по ID
SELECT * FROM employees WHERE id = 1;

--Добавление нового сотрудника:
INSERT INTO employees (name, position, phone) VALUES ('John Doe', 'Manager', '555-123-4567');

--Обновление информации о сотруднике по его ID:
UPDATE employees SET name = 'Updated Name', position = 'Updated Position', phone = '555-987-6543' WHERE id = 2;

--Удаление сотрудника по его ID:
DELETE FROM employees WHERE id = 3;
