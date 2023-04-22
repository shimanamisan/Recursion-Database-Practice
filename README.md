# Recursion-Database-Practice

コンピュータサイエンスを学習できるプラットフォーム、Recursion のデータベースに関する学習を進めるためのローカル環境です。

# 環境

- Windows11: 22H2
- WSL: Ubuntu-20.04 Version 2
- Ubuntu: 20.04.3 LTS
- Docker: 20.10.19, （build d85ef84）
- Docker Compose: 2.15.1
- Visual Studio Code: v1.77.3
※MacOS での動作確認はしていません。

# 必要ツール

Visual Studio Codeの拡張機能 [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack) をインストールしておく必要があります。

# 使用方法

プロジェクトを VS Codeで開き、「F1」キー若しくは、「Shift + Ctrl + P」を押してコマンドパレットを開きます。
`Rebuild Container` を実行して下さい。
    - 前回ビルド時のキャッシュを使用しない場合は `Rebuild Container Without Cache` を実行して下さい。

![スクリーンショット 2023-04-22 090832](https://user-images.githubusercontent.com/49751604/233751234-74c594f2-df39-4638-beb9-b9bd3c7a89c6.png)

## 使用方法の注意

Dockerコンテナ内のユーザーは、ローカル環境と同じユーザー名を作成して接続しています。ご自身の環境にあったユーザーを`Dockerfile`と`devcontainer.json`に指定して下さい。

```json
{
    "name": "Docker-Database",
    "dockerComposeFile": "docker-compose.yml",
    // docker-compose.ymlファイル内のどのサービスがDev Containerであるかを示す
    "service": "database",
    // ワークスペースを指定
    "workspaceFolder": "/workspace",
    "remoteUser": "user01" // ←ここを任意のユーザーに変える
}
```

```dockerfile
FROM mysql:8.0.33-debian

# ワークディレクトリを作成
WORKDIR /workspace

# ユーザーの追加
RUN useradd -m -s /bin/bash user01 # ←ここを任意のユーザーに変える
```

コンテナが立ち上がると、作成したユーザーで接続できていることを確認して下さい。

![スクリーンショット 2023-04-22 091655](https://user-images.githubusercontent.com/49751604/233751459-ba7e8617-17de-4c41-ad92-3a4da668be71.png)

# 接続確認

ターミナルからrootユーザーで接続できるか確認して下さい。
rootユーザーのパスワードは`docker-compose.yml`で設定してます。
    - `rootpass`

```bash
$ mysql -u root -p
```
![スクリーンショット 2023-04-22 092000](https://user-images.githubusercontent.com/49751604/233751623-38f6afbc-8178-41b1-be7e-6c138ca03233.png)

# DBeaverの設定

SQLクライアントソフトの設定を行います。

1. 新しい接続を選択
2. 「新しい接続タイプ」でMySQLを選択して次へ
3. 「Database:」に`recursion-database`を指定
4. 「認証」のパスワードに`rootpass`と指定
5. 「接続テスト」ボタンを押して、接続が出来たことを確認する

## 注意

MySQL8.0以降のデータベースでは、接続テストを行った時に以下のエラーが発生します。
![スクリーンショット 2023-04-22 065057](https://user-images.githubusercontent.com/49751604/233752051-aab1b051-bb3a-4ab7-a2c9-310108bb845f.png)

その場合は最初のユーザーやデータベースを指定した画面に戻り、以下の設定を追加して下さい。

1. 「接続プロパティ」タブを選択
2. 右クリック → 新しいプロパティを追加

![スクリーンショット 2023-04-22 065428](https://user-images.githubusercontent.com/49751604/233752107-c6bc727a-75ea-42df-bf88-d386ada04b89.png)

3. `allowPublicKeyRetrieval`を追加し、値を`true`に設定する

![スクリーンショット 2023-04-22 065450](https://user-images.githubusercontent.com/49751604/233752111-c3455479-dbe3-42e5-98c9-16da326d684a.png)



![スクリーンショット 2023-04-22 065530](https://user-images.githubusercontent.com/49751604/233752114-08a7c0a7-b431-4cd8-980a-accd83572260.png)

4. 「接続テスト」ボタンを押して、接続が出来たことを確認する

![スクリーンショット 2023-04-22 065541](https://user-images.githubusercontent.com/49751604/233752141-5af6e67e-355f-4c70-b0c0-03d616977809.png)

# DBeaverの使用方法

1. 使用するデータベースを選択します。

![スクリーンショット 2023-04-22 065651](https://user-images.githubusercontent.com/49751604/233752350-e523058d-e4a2-4bed-b413-3e86bca95796.png)

2. 使用するデータベースで右クリック → 新しいSQLエディタを選択

![スクリーンショット 2023-04-22 093708](https://user-images.githubusercontent.com/49751604/233752543-01f33fc9-148b-44bb-a30a-9f52f17a9d9f.png)

3. 開かれたエディタを使用します。

![スクリーンショット 2023-04-22 094130](https://user-images.githubusercontent.com/49751604/233752599-3a43ce5f-0d2b-45ed-ba27-7480d864ea73.png)

# Author

[@hn_pgtech](https://twitter.com/hn_pgtech)