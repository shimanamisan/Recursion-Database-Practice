# UNIONの構文
# SELECT column_name FROM table_name UNION SELECT column_name FROM table_name (UNION ...);

SELECT * FROM users;

# 全ユーザーの年齢の平均値を取得する
# 表示するカラムは集計種別カラムと集計結果カラムを出力する
SELECT '平均値' AS 集計種別, AVG(age) AS 集計結果 FROM users;

# 全ユーザーの年齢の最大値を取得する
# 表示するカラムは集計種別カラムと集計結果カラムを表示する
SELECT '最大値' AS 集計種別, MAX(age) AS 集計結果 FROM users;

# 全ユーザーの最小値を取得する
# 表示するカラムは集計種別カラムと集計結果カラムを表示する
SELECT '最小値' AS 集計種別, MIN(age) AS 集計結果 FROM users;

# 上記3つのクエリをUNIONでつなげる
SELECT '平均値' AS 集計種別, AVG(age) AS 集計結果 FROM users
UNION
SELECT '最大値' AS 集計種別, MAX(age) AS 集計結果 FROM users
UNION
SELECT '最小値' AS 集計種別, MIN(age) AS 集計結果 FROM users;

# UNION ALL
/*
 * 全都道府県合計のユーザー数と各都道府県のユーザー数を取得する
 * 
 * 出力するカラム
 * 1. 都道府県
 * 2. ユーザー数
 * 
 * 都道府県合計レコードの都道府県のカラム値は「全域」とする
*/
SELECT * FROM users;
# 全都道府県別の合計ユーザー数を取得する
SELECT
    '全域' AS 都道府県
    , COUNT(*) AS ユーザー数 
FROM
    users;

# 各都道府県のユーザー数を取得する
SELECT
    prefecture
    , COUNT(*) AS ユーザー数
FROM
    users
GROUP BY
    prefecture
ORDER BY
    ユーザー数 DESC;
    
# UNION ALLで結合する
SELECT
    '全域' AS 都道府県
    , COUNT(*) AS ユーザー数 
FROM
    users
UNION ALL
SELECT
    prefecture AS 都道府県
    , COUNT(*) AS ユーザー数
FROM
    users
GROUP BY
    prefecture
ORDER BY
    ユーザー数 DESC;

