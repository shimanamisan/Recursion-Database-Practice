INSERT
    INTO
    users
VALUES (
    12
    , '今本'
    , '修平'
    , 'しゅうちゃん'
    , '東京都'
    , '09033334444'
    , 30
    , '2022-01-01'
    , '2021-11-08 11:39:52'
    , '2022-01-01 06:01:56'
);

SELECT * FROM users;

INSERT
    INTO
    users (
        id
        , family_name
        , first_name
        , prefecture
        , phone_number
        , age
        , created_at
        , updated_at
    )
VALUES (
    13
    , '坂本'
    , '龍馬'
    , '高知県'
    , '09044445555'
    , 31
    , '2022-05-01 13:55:49'
    , '2022-05-01 13:55:49'
);

SELECT * FROM users;

INSERT
    INTO
    users
VALUES (
    14
    , '長嶋'
    , '優斗'
    , default
    , '東京都'
    , '09055556666'
    , 19
    , default
    , '2021-12-08 23:42:19'
    , '2022-02-11 06:13:27'
);

SELECT * FROM users;

# lesson_1038 製品追加
INSERT
    INTO 
        products (
         id
        , product_name
        , price
        , brand
        , model
        , description
        , category
    )
VALUES(
    31
    , '32GB RAM DDR5'
    , 150
    , 'Corsair'
    , 'Vengeance'
    , 'Fast speed 2 stick ram DDR5 technology'
    , 'electronics'
),
(
    32
    , 'Harry Potter and the Sorcerer Stone I'
    , 10
    , 'Bloomsbury'
    , NULL
    , 'A book about Harry Potter and his magical journey.'
    , 'books'
),
(
    33
    , 'Ceiling Fan'
    , 350
    , 'Minka'
    , 'Aire Xtreme H2O'
    , 'A coal wet ceiling fan with remote control. It has 8 different spin speeds.'
    , 'home'
);
