# クロス結合
SELECT
	a.id 著者ID,
	CONCAT(a.family_name, ' ', a.first_name) 著者名,
	b.id 本ID,
	b.name 本タイトル,
	b.author_id books_著者ID
FROM
	authors a
CROSS JOIN books b
ORDER BY
	著者ID ASC;
	
/*
 * 課題
 * 
 */
# テーブル作成
CREATE TABLE A_users (
id int PRIMARY KEY,
nickname varchar(255) NOT NULL,
email varchar(255) NOT NULL UNIQUE,
last_logged_in date
);

# データ挿入
INSERT
	INTO
	A_users
VALUES (1,
"やまぽん",
"yama@example.com",
"2022-01-02"),
(2,
"たなか",
"tanaka@example.com",
"2022-04-01"),
(3,
"たかくん",
"taka@example.com",
"2022-05-23"),
(4,
"けんくん",
"ken@example.com",
"2022-01-02"),
(5,
"たろくん",
"taro@example.com",
"2021-12-23"),
(6,
"りゅうちゃん",
"ryu@example.com",
"2022-01-04"),
(7,
"しょう",
"syo@example.com",
"2022-05-01"),
(8,
"やまっち",
"yamachi@example.com",
"2022-03-16"),
(9,
"はっとり",
"hattori@example.com",
"2022-06-29"),
(10,
"こうくん",
"ko@example.com",
"2022-04-14"),
(11,
"れん",
"ren@example.com",
"2022-01-25");

# テーブル作成
CREATE TABLE B_users (
id int PRIMARY KEY,
nickname varchar(255) NOT NULL,
email varchar(255) NOT NULL UNIQUE,
last_logged_in date
);

# データ挿入
INSERT
	INTO
	B_users
VALUES (1,
"たっくん",
"taku@example.com",
"2022-01-02"),
(2,
"やまぽん",
"yama@example.com",
"2022-01-02"),
(3,
"たかくん",
"taka@example.com",
"2022-05-23"),
(4,
"しん",
"shin@example.com",
"2022-01-02"),
(5,
"しょうや",
"shoya@example.com",
"2022-01-02"),
(6,
"しょう",
"syo@example.com",
"2022-05-01"),
(7,
"やまっち",
"yamachi@example.com",
"2022-03-16"),
(8,
"せいじ",
"seiji@example.com",
"2022-01-02"),
(9,
"しょうご",
"shogo@example.com",
"2022-06-29"),
(10,
"まさ",
"masa@example.com",
"2022-01-02");

# 課題1
# 確認
SELECT * FROM A_users;
SELECT * FROM B_users;

/*
 * 両方のWebサイトに登録されているユーザーを抽出する
 * 同じユーザーである判定方法は、AとBどちらもemailが登録されていたら同じユーザーと判定する
 */
SELECT
	COUNT(*)
FROM
	A_users AS a_u
CROSS JOIN B_users AS b_u
WHERE
	a_u.email = b_u.email;

/*
 * 課題2
 * サイトA にだけに登録しているユーザー数を表示する
 * FROM句には A_usersテーブルを指定
 */
SELECT
	*
FROM
	A_users au
INNER JOIN B_users bu
	ON au.email != bu.email;


/*
 * 課題3
 * サイトB にだけに登録しているユーザー数を表示する
 * FROM句には A_usersテーブルを指定
 */


/*
 * 課題4
 * サイトA または、サイトB どちらか一方でも登録しているユーザー数を表示する
 * FROM句には A_usersテーブルを指定
 */