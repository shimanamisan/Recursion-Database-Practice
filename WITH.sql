# サブクエリのセクションで使用したクエリ
SELECT
    MAX(number_of_users) 最大人口,
    MIN(number_of_users) 最小人口,
    AVG(number_of_users) 平均人口
FROM
(
    SELECT
        prefecture prefecture,
        COUNT(*) number_of_users
    FROM
        users u
    GROUP BY
        u.prefecture
) main
;

# WITH句
WITH number_of_users_by_prefecture AS 
    (
        SELECT
            prefecture AS prefecture,
            COUNT(*) AS number_of_users
        FROM users u
        GROUP BY
            u.prefecture
    )
SELECT 
    MAX(number_of_users) 最大人口,
    MIN(number_of_users) 最小人口,
    AVG(number_of_users) 平均人口
FROM number_of_users_by_prefecture;


# サブクエリの課題で使用したクエリを、WITH を使って書き直す
# サブクエリを使用している形
SELECT
    MAX(purchases_count) AS 最大購入回数,
    MIN(purchases_count) AS 最小購入回数,
    AVG(purchases_count) AS 平均購入回数
FROM
(
    SELECT
        u.id AS ユーザーID,
        COUNT(p.id)  AS purchases_count
    FROM
        users u
    LEFT JOIN purchases p ON u.id = p.user_id
    GROUP BY 
        u.id
) AS user_purchases_counts;

# WITH句を使用した場合
WITH user_purchases_count AS
(
    SELECT
        u.id AS ユーザーID,
        COUNT(p.id)  AS purchases_count
    FROM
        users u
    LEFT JOIN purchases p ON u.id = p.user_id
    GROUP BY 
        u.id
)
SELECT
    MAX(purchases_count) AS 最大購入回数,
    MIN(purchases_count) AS 最小購入回数,
    AVG(purchases_count) AS 平均購入回数
FROM user_purchases_count;