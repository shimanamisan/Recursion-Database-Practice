# productsテーブルのnameカラムに対してNOT NULL制約をしてテーブルを作成する
CREATE TABLE products(
id INT,
name VARCHAR(255) NOT NULL
);

# カラムの情報を確認
SHOW COLUMNS FROM products;

# employeesテーブルのemailカラムに対してUNIQUENESS制約をしてテーブルを作成する
CREATE TABLE employees(
id INT,
name VARCHAR(255),
email VARCHAR(255) UNIQUE
);

# カラムの情報を確認
SHOW COLUMNS FROM employees;

# カラムのインデックス情報を確認
SHOW INDEX FROM employees;

# usersテーブルにCHECK制約をつけてテーブルを作成
CREATE TABLE users (
id INT PRIMARY KEY,
age INT,
CONSTRAINT age_check CHECK(age >= 18)
);

# 制約の内容を確認
SHOW CREATE TABLE users;