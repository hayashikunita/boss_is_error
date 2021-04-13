# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# テーブル設計
>>>>>>>>>>>>>>>>>>>>>
## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| email     | string | null: false |
| password    | string | null: false |
| name | string | null: false |


>>>>>>>>>>>>>>>>>>>
## comments テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| text   | text | null: false |
| user   | references | null: false, foreign_key: true |
| prototype  | references | null: false, foreign_key: true |

### Association

- has_many :room_users
- has_many :users, through: room_users
- has_many :messages

>>>>>>>>>>>>>>>>>>>>

## prototypes テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| title   |string | null: false |
| catch_copy   | text | null: false |


| user    | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user 


### アプリケーション名	
boss-is-error
### アプリケーション概要	このアプリケーションでできることを記述。
エラーを投稿する事で、自分のエラーの管理ができる
### URL	デプロイ済みのURLを記述。デプロイが済んでいない場合は、デプロイが完了次第記述すること。
https://boss-is-error.herokuapp.com/
### テスト用アカウント	ログイン機能等を実装した場合は、ログインに必要な情報を記述。またBasic認証等を設けている場合は、そのID/Passも記述すること。

### 利用方法	このアプリケーションの利用方法を記述。
### 目指した課題解決	このアプリケーションを通じて、どのような人の、どのような課題を解決しようとしているのかを記述。
### 洗い出した要件	スプレッドシートにまとめた要件定義を記述。
### 実装した機能についての画像やGIFおよびその説明	実装した機能について、それぞれどのような特徴があるのかを列挙する形で記述。画像はGyazoで、GIFはGyazoGIFで撮影すること。
### 実装予定の機能	洗い出した要件の中から、今後実装予定の機能がある場合は、その機能を記述。
### データベース設計	ER図等を添付。
### ローカルでの動作方法	git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記述。この時、アプリケーション開発に使用した環境を併記することを忘れないこと（パッケージやRubyのバージョンなど）。