# テーブル情報を確認
SHOW CREATE TABLE new_departments;

# カラムを追加
ALTER TABLE new_departments ADD sequence  INT NOT NULL AFTER name;

# テーブル情報を確認
SHOW CREATE TABLE new_departments;

# カラムの削除
ALTER TABLE new_departments DROP sequence;

# テーブル情報を確認
SHOW CREATE TABLE new_departments;

# 課題1
SHOW tables;
# staffテーブルをworkersに変更する
ALTER TABLE staff RENAME TO workers;

# テーブル名が変更されているか確認
SHOW tables;
SHOW CREATE TABLE workers;

# 課題2
# last_name カラムの名称を family_name に変更
# company_id 外部キーの名称を company_fkey に変更
ALTER TABLE workers RENAME COLUMN last_name TO family_name;
ALTER TABLE workers RENAME INDEX companies_fk TO company_fkey;

# 確認
SHOW CREATE TABLE workers;

# 課題3
# test_db にある workers テーブルに、以下のカラムを追加
# カラム名: username, データ型: VARCHAR(255), その他制約: NOT NULL, 一意（UNIQUE）
# カラム名: introduction, データ型: TEXT
ALTER TABLE workers ADD username VARCHAR(255) NOT NULL AFTER id;
SHOW CREATE TABLE workers;
# 挿入箇所を指定しないで実行してみる
ALTER TABLE workers ADD introduction TEXT;
SHOW CREATE TABLE workers;