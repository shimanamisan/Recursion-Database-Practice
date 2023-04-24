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