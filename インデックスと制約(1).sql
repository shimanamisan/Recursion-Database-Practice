# departmentsテーブルを作成
CREATE TABLE departments (
id int,
name varchar(255),
start_date date
);

# テーブルの確認
SHOW TABLES;

# menuテーブルを作成
CREATE TABLE menu(
id INT,
name VARCHAR(255),
price INT,
start_date DATE,
end_date DATE
);

# departmentsのidカラムにインデックスを作成
ALTER TABLE departments add index id_index (id);

# departmentsテーブルのインデックス情報を確認
SHOW INDEX FROM departments;

# membersテーブルを作成し、主キー制約を設定
CREATE TABLE members (
id INT PRIMARY KEY
);

# テーブルのカラムを確認
SHOW COLUMNS FROM members;

# membersテーブルのインデックス情報を確認
SHOW INDEX FROM members;

# authorsテーブルを作成
CREATE TABLE authors (
id INT PRIMARY KEY
);

# authorsのidを外部キーに持つbooksテーブルを作成
CREATE TABLE books(
id INT,
author_id INT,
FOREIGN KEY author_fk(author_id) REFERENCES authors(id)
);

# カラム情報を確認
SHOW COLUMNS FROM authors;
SHOW COLUMNS FROM books;

# インデックス情報を確認
SHOW COLUMNS FROM authors;
SHOW COLUMNS FROM books;



