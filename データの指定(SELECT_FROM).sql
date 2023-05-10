# ダミーデータを格納
INSERT INTO products (id, name) VALUES (1, 'バナソニックレンジ'), (2, 'ゾニーカメラ'), (3, 'とうじばエアコン'), (4, 'シャーブテレビ');

# データを取得
SELECT products.id, products.name FROM products;

# 課題1
SELECT name FROM products;