# テーブルの一覧
SHOW TABLES;

# テーブルの削除
DROP TABLE new_departments;

# テーブルの一覧
SHOW TABLES;

# ダミーデータを入れておく
INSERT INTO employees(id, name, email) VALUES (1, '本田', 'example1@test.com'), (2, '佐藤', 'example2@test.com'), (3, '田中', 'example3@test.com');
SELECT * FROM employees;

# データの削除
TRUNCATE TABLE employees;
SELECT * FROM employees;

# 課題1
DROP TABLE employees;
SELECT * FROM employees;