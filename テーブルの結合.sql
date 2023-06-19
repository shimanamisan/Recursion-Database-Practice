# テーブルの結合

# テーブルを作成
CREATE TABLE authors (id INT PRIMARY KEY, family_name VARCHAR(255), first_name VARCHAR(255));
CREATE TABLE books (id INT PRIMARY KEY, name VARCHAR(255), author_id INT);

# データを挿入
INSERT INTO authors VALUES(1, '鳥山', '明'), (2, '福本', '伸行'), (3, '臼井', '儀人'), (4, '武内', '直子');
INSERT INTO books VALUES(1, 'ドラゴンボール', 1), (2, 'アカギ', 2), (3, '賭博黙示録カイジ', 2), (4, 'クレヨンしんちゃん', 3), (5, 'ONE PIECE', 5);

# 確認
SELECT * FROM authors;
SELECT * FROM books;

# 結合
SELECT
    books.id AS 本ID
    , books.name AS 本タイトル
    , CONCAT(authors.family_name, " ", authors.first_name) AS 著者名
FROM
    books
INNER JOIN authors ON
    authors.id = books.author_id;

# authors テーブルを内部表にして結合
SELECT
    books.id AS 本ID
    , books.name AS 本タイトル
    , CONCAT(authors.family_name, ' ', authors.first_name) AS 著者名
FROM
    books
JOIN authors ON
    authors.id = books.author_id;

# AS を使ってエイリアスを付ける
SELECT
    b.id AS 本ID
    , b.name AS 本タイトル
    , CONCAT(a.family_name, ' ', a.first_name) AS 著者名
FROM
    books AS b
JOIN authors AS a ON
    a.id = b.author_id;
    
# AS を省略
SELECT
    b.id 本ID
    , b.name 本タイトル
    , CONCAT(a.family_name, ' ', a.first_name) 著者名
FROM
    books b
JOIN authors a ON
    a.id = b.author_id;