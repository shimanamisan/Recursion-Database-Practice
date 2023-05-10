# 昇順（asc）
SELECT * FROM products ORDER BY price ASC;
# ASCは省略できる
SELECT * FROM products ORDER BY price;

# 降順（desc）
SELECT * FROM products ORDER BY price DESC;

# 新しいレコードを追加
INSERT INTO users VALUES (11, '本田', '光輝', NULL, '大阪府', '09022223333', 22, '2022-01-01 12:01:10', '2022-04-01 21:45:33');
SELECT * FROM users;
# ageが22のレコードに注目
SELECT * FROM users ORDER BY age ASC, created_at DESC;