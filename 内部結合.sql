# 駆動表は、authors テーブル
# 内部表は、books テーブル
SELECT
    a.id 著者ID
    , CONCAT(a.family_name, ' ', a.first_name) 著者名
    , b.id 本ID
    , b.name 本タイトル
    , b.author_id books_著者ID
FROM
    authors a
INNER JOIN books b ON
    b.author_id = a.id;