# BETWEEN
SELECT * FROM products WHERE price BETWEEN 100000 AND 200000;

# 上と同じ結果
SELECT * FROM products WHERE price >= 100000 AND price <= 200000;

# LIKE句
SELECT * FROM products WHERE name LIKE "ゾニー%";
# 前方一致
SELECT * FROM products WHERE name LIKE "ゾニー%";
# 後方一致
SELECT * FROM products WHERE name LIKE "%テレビ";
# 部分一致
SELECT * FROM products WHERE name LIKE "%じば%";
SELECT * FROM products WHERE name LIKE "%ゾニー%";

# 中間一致（先頭や後尾で一致しているものは検索にヒットしない）
SELECT * FROM products WHERE name LIKE "_%ゾニー%_";
# 指定した単語が文字列の内側にある文字列がヒットする
SELECT * FROM products WHERE name LIKE "_%じば%_";
# ゾニーが先頭で、かつゾニーの後に 3 文字存在する文字列を検索
SELECT * FROM products WHERE name LIKE "ゾニー___";

# IS NULL
SELECT * FROM products WHERE price IS NULL;