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

# 課題1
CREATE TABLE companies(
id INT PRIMARY KEY,
name VARCHAR(255) NOT NULL,
url TEXT,
zip_code VARCHAR(7) NOT NULL,
established_date DATE NOT NULL,
memo TEXT
);

# テーブル情報を確認
SHOW CREATE TABLE companies;


# 課題2
CREATE TABLE staff(
id INT PRIMARY KEY,
company_id INT,
FOREIGN KEY companies_fk(company_id) REFERENCES companies(id),
last_name VARCHAR(255) NOT NULL,
first_name VARCHAR(255) NOT NULL,
birthday DATE NOT NULL,
email VARCHAR(255) NOT NULL UNIQUE,
phone_number VARCHAR(11),
salary INT,
CONSTRAINT salary_check CHECK(salary >= 0)
);

# テーブル情報を確認
SHOW CREATE TABLE staff;