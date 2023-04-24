# テーブル情報を確認
SHOW CREATE TABLE departments;

# テーブルの一覧
SHOW TABLES;

# テーブル名の変更
ALTER TABLE departments RENAME TO new_departments;
# departments -> new_departments

# テーブルの一覧
SHOW TABLES;

# カラム名の変更
ALTER TABLE new_departments RENAME COLUMN start_date TO start_on;

# テーブル情報を確認
SHOW CREATE TABLE new_departments;
# start_date -> start_on

# インデックス名を確認
ALTER TABLE new_departments RENAME INDEX id_index TO new_id_index;

# テーブル情報を確認
SHOW CREATE TABLE new_departments;
# id_index -> new_id_index

# カラムの定義の変更
ALTER TABLE new_departments MODIFY id BIGINT UNIQUE;
# id INT -> id BIGINT

# テーブル情報を確認
SHOW CREATE TABLE new_departments;
# UNIQUE KEY を設定したカラムには自動的にインデックスが付与される

# インデックスを削除する
ALTER TABLE new_departments DROP INDEX new_id_index;

# テーブル情報を確認
SHOW CREATE TABLE new_departments;