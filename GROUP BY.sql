SELECT * FROM users;

# 各都道府県ごとの平均年齢を取得する
SELECT
    prefecture AS 都道府県
    , AVG(age) AS 平均年齢
FROM
    users
GROUP BY
    prefecture;

# WHERE句と組み合わせた使い方
SELECT
    prefecture AS 都道府県
    , AVG(age) AS 平均年齢
FROM
    users
WHERE
    prefecture IN (
        '大阪府', '東京都'
    )
GROUP BY
    prefecture;