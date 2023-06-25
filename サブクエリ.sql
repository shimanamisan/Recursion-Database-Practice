# サブクエリ
SELECT * FROM users u;
# まずは各都道府県をグループ化し、レコード数をカウントする
SELECT
    COUNT(*) AS 人口
    , prefecture AS 都道府県
FROM
    users
GROUP BY
    prefecture;

# とりあえず先程のクエリ文を繋げてみる
SELECT
    *
FROM
(
    SELECT
        COUNT(*) AS 人口
        , prefecture AS 都道府県
    FROM
        users
    GROUP BY
        prefecture
) AS メインクエリ;

# 各都道府県の最大人口、最小人口、平均人口を取得する
SELECT
    MAX(人口) AS 最大人口,
    MIN(人口) AS 最小人口,
    AVG(人口) AS 平均人口
FROM
(
    SELECT
        COUNT(*) AS 人口
        , prefecture AS 都道府県
    FROM
        users
    GROUP BY
        prefecture
) AS サブクエリ;

# 課題
CREATE TABLE items (
    id INT PRIMARY KEY
    , name VARCHAR(255) NOT NULL
);
CREATE TABLE purchases (
    id INT PRIMARY KEY
    , user_id INT
    , item_id INT
    , FOREIGN KEY user_fk(user_id) REFERENCES users(id)
    , FOREIGN KEY item_fk(item_id) REFERENCES items(id)
);
INSERT
    INTO
    items (
        id
        , name
    )
VALUES (
    1
    , '川スプレイ'
)
, (
    2
    , 'カメラ'
)
, (
    3
    , 'エアコン'
)
, (
    4
    , 'テレビ'
)
, (
    5
    , '掃除ロボット'
);
INSERT
    INTO
    purchases (
        id
        , user_id
        , item_id
    )
VALUES (
    1
    , 1
    , 1
)
, (
    2
    , 2
    , 4
)
, (
    3
    , 5
    , 1
)
, (
    4
    , 2
    , 5
)
, (
    5
    , 11
    , 4
)
, (
    6
    , 12
    , 3
)
, (
    7
    , 6
    , 3
)
, (
    8
    , 1
    , 5
)
, (
    9
    , 4
    , 5
)
, (
    10
    , 3
    , 2
)
, (
    11
    , 7
    , 4
)
, (
    12
    , 7
    , 1
)
, (
    13
    , 2
    , 5
)
, (
    14
    , 6
    , 4
);

/* 
 * 課題1
 * ユーザーごとの購入回数を計算し、最大購入回数、最少購入回数、平均購入回数を一つのテーブルで取得してください。
 * この時、購入回数が 0 回のユーザーも含めた結果を取得してください。
 */

SELECT * FROM users u;
SELECT * FROM items i;
SELECT * FROM purchases p;

# まずはユーザーごとの購入回数を集計する
# LEFT JOINを使用して購入履歴がないユーザーもカウントする
# まずは集計していない結果
SELECT
    u.id AS ユーザーID,
    p.id AS purchaseテーブルid
FROM
    users u
LEFT JOIN purchases p ON u.id = p.user_id;

# ユーザーごとの購入履歴を集計
SELECT
    u.id AS ユーザーID,
    COUNT(p.id)  AS purchases_count
FROM
    users u
LEFT JOIN purchases p ON u.id = p.user_id
GROUP BY 
    u.id;


# 集計した購入回数をサブクエリにしてメインクエリに渡す
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


