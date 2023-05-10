# テーブル内のデータを全て削除
ALTER TABLE products ADD COLUMN price INT;
INSERT INTO products (id, name, price)
VALUES (1, 'バナソニックレンジ', 50000), (2, 'ゾニーカメラ', 100000), (3, 'とうじばエアコン', 200000), (4, 'シャーブテレビ', 500000);
SELECT * FROM products;

# IN(いずれかの値を含む場合 true それ以外は false)
SELECT * FROM products WHERE price IN (100000, 200000);

# 検索値に NULL 指定することはできない
SELECT * FROM products WHERE price IN (100000, 200000, NULL);
SELECT * FROM products WHERE (price = 100000 OR price = 200000 OR price = NULL);

# 100,000 円でも 200,000 円でもないレコードを取得
SELECT * FROM products WHERE price NOT IN (100000, 200000);

# データを入れ直す
TRUNCATE TABLE products;
ALTER TABLE products ADD COLUMN model_year INT;
INSERT INTO products (id, name, price, model_year)
VALUES (1, 'バナソニックレンジ', 50000, 2012), (2, 'ゾニーカメラ', 100000, 2020), (3, 'とうじばエアコン', 200000, 2016), (4, 'シャーブテレビ', 500000, NULL);
SELECT * FROM products;

# IN句
SELECT * FROM products WHERE model_year IN (2020);
# NOT IN句
SELECT * FROM products WHERE model_year NOT IN (2020);