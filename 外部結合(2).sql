# 完全外部結合
SELECT
    *
FROM
    books b
WHERE
    b.id = 3
UNION
SELECT
    *
FROM
    books b
WHERE
    b.id = 1;

# LEFT OUTER JOIN と RIGHT OUTER JOIN を繋げる
SELECT
    a.id 著者ID
    , CONCAT(a.family_name, ' ', a.first_name) 著者名
    , b.id 本ID
    , b.name 本タイトル
    , b.author_id books_著者ID
FROM
    authors a
LEFT OUTER JOIN books b ON
    b.author_id = a.id
UNION
SELECT
    a.id 著者ID
    , CONCAT(a.family_name, ' ', a.first_name) 著者名
    , b.id 本ID
    , b.name 本タイトル
    , b.author_id books_著者ID
FROM
    authors a
RIGHT OUTER JOIN books b ON
    b.author_id = a.id;