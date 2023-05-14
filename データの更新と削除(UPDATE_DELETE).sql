# 現在のテーブルを確認
SELECT * FROM users;

# family_nameが坂本のニックネームをりょうまに更新
UPDATE users SET nickname = 'りょうま' WHERE family_name = '坂本';

SELECT * FROM users;

# family_nameが坂本の人が二人いたので関係ない人のニックネームは元に戻す
UPDATE users SET nickname = 'たろくん' WHERE id = 5;

SELECT * FROM users;

# データの削除
DELETE FROM users WHERE id >= 13;

SELECT * FROM users;

# 課題1
INSERT 
    INTO
    users(
        id
        , family_name
        , first_name
        , nickname
        , prefecture
        , phone_number
        , age
        , last_logged_in
        , created_at
        , updated_at
    )
VALUES(
    13
    , '山口'
    , '純'
    , 'じゅん'
    , '奈良県'
    , '09066667777'
    , 29
    , '2022-05-23'
    , '2022-02-10 12:42:19'
    , '2022-05-23 09:11:30'
);

SELECT * FROM users;

# 課題2
UPDATE
    users
SET
    nickname = 'じゅんちゃん'
    , last_logged_in = '2022-05-24'
WHERE
    id = 13;

SELECT * FROM users;

# 課題3
# idが奇数のレコードを削除
DELETE FROM users WHERE id % 2 = 1;

SELECT * FROM users;


# lesson_1039 投稿削除
-- DELETE FROM posts WHERE id = 1 OR id = 5 OR id = 6;
# これでも行ける
DELETE FROM  posts WHERE id IN(1, 5, 6);

DELETE FROM posts WHERE category = 'travel_vacation';

SELECT * FROM posts ORDER BY category , title;

