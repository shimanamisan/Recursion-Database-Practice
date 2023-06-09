# 表示するレコード数を3つに指定
SELECT * FROM users ORDER BY age ASC LIMIT 3;

# エラーとなる構文
SELECT * FROM users LIMIT 3 ORDER BY age ASC;
# 正しい構文
# SELECT column_names FROM table WHERE clause ORDER BY column_name [ASC | DESC] LIMIT count;
# データの抽出（SELECT, FROM, WHERE）→ データの表示（ORDER, LIMIT）」というプロセスで実行されている

TRUNCATE TABLE users;

ALTER TABLE users ADD COLUMN last_logged_in DATE AFTER age;

INSERT
    INTO
    test_db.users
VALUES (
    1
    , "山田"
    , "太郎"
    , "やまぽん"
    , "東京都"
    , "09011111111"
    , 22
    , "2022-01-02"
    , "2022-01-01 12:01:11"
    , "2022-01-01 12:01:11"
)
, (
    2
    , "田中"
    , "次郎"
    , "たなか"
    , "東京都"
    , "09022222222"
    , 30
    , "2022-04-01"
    , "2022-03-02 10:53:20"
    , "2022-04-01 20:31:47"
)
, (
    3
    , "佐藤"
    , "隆"
    , "たかくん"
    , "大阪府"
    , "09033333333"
    , 18
    , "2022-05-23"
    , "2022-03-01 21:23:55"
    , "2022-05-11 16:02:13"
)
, (
    4
    , "松本"
    , "健斗"
    , NULL
    , "宮崎県"
    , "09044444444"
    , 35
    , "2022-01-02"
    , "2021-11-21 14:05:42"
    , "2022-01-02 17:52:12"
)
, (
    5
    , "坂本"
    , "太郎"
    , "たろくん"
    , "滋賀県"
    , "09055555555"
    , 17
    , "2021-12-23"
    , "2021-06-02 23:41:44"
    , "2021-12-10 09:47:29"
)
, (
    6
    , "飯島"
    , "隆平"
    , NULL
    , "東京都"
    , "09066666666"
    , 24
    , "2022-01-04"
    , "2021-12-31 10:20:11"
    , "2022-01-04 21:00:48"
)
, (
    7
    , "藤本"
    , "翔也"
    , "しょう"
    , "東京都"
    , "09077777777"
    , 44
    , "2022-05-01"
    , "2022-03-24 06:01:53"
    , "2022-05-01 04:01:02"
)
, (
    8
    , "山本"
    , "圭佑"
    , "やまっち"
    , "北海道"
    , "09077777777"
    , 39
    , "2022-03-16"
    , "2021-09-03 19:56:39"
    , "2022-03-16 09:42:56"
)
, (
    9
    , "服部"
    , "誠司"
    , "はっとり"
    , "鹿児島県"
    , "09099999999"
    , 29
    , "2022-06-29"
    , "2022-01-02 06:47:22"
    , "2022-06-29 06:35:43"
)
, (
    10
    , "城田"
    , "浩二"
    , "こうくん"
    , "石川県"
    , "09011112222"
    , 20
    , "2022-04-14"
    , "2021-12-20 21:01:24"
    , "2022-04-13 10:37:52"
)
, (
    11
    , '本田'
    , '光輝'
    , NULL
    , '大阪府'
    , '09022223333'
    , 22
    , '2022-04-01'
    , '2022-01-01 12:01:10'
    , '2022-04-01 21:45:33'
);

SELECT * FROM users;

# 課題1
# 最終ログイン日が新しい順に並び替えて、全レコード、全カラムを表示してください。
SELECT * FROM users ORDER BY last_logged_in DESC;

# 課題2
# 最終ログイン日の新しい順, 年齢の若い順の順番で並び替えて、全レコード、全カラムを表示してください。
SELECT * FROM users ORDER BY last_logged_in DESC, age ASC;

# 課題3
# 最終ログイン日の新しい順, 年齢の若い順の順番で並び替えて、最初の 5 レコード、全カラムを表示してください。
SELECT * FROM users ORDER BY last_logged_in DESC, age ASC LIMIT 5;


