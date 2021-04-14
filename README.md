# README
### アプリケーション名	
boss-is-error

### アプリケーション概要	このアプリケーションでできることを記述。
エラーを投稿する事で、自分のエラーの管理ができる

### URL	デプロイ済みのURLを記述。デプロイが済んでいない場合は、デプロイが完了次第記述すること。
https://boss-is-error.herokuapp.com/

### テスト用アカウント	ログイン機能等を実装した場合は、ログインに必要な情報を記述。またBasic認証等を設けている場合は、そのID/Passも記述すること。
メールアドレス  ddd@ddd
パスワード     dddddd

### 利用方法	このアプリケーションの利用方法を記述。
登録する
エラーを投稿する
自分のエラーを確認する

### 目指した課題解決	このアプリケーションを通じて、どのような人の、どのような課題を解決しようとしているのかを記述。
Ruby on railsでのミスをより細分化し、取り組みやすくした

### 洗い出した要件	スプレッドシートにまとめた要件定義を記述。
投稿機能
エラー数ランキング
みんなのエラーを表示させるページ（index)
自分の詳細ページに今までの投稿を表示させるページ(show)
コメント機能
ログインログアウト機能
検索可能
自分の詳細ページにエラーの個数を表示させる
自分の詳細ページにエラーののランキングを一覧表示する

### 実装した機能についての画像やGIFおよびその説明	実装した機能について、それぞれどのような特徴があるのかを列挙する形で記述。画像はGyazoで、GIFはGyazoGIFで撮影すること。
ユーザー詳細ページ
自分のミスのランキング化
[![Image from Gyazo](https://i.gyazo.com/97356e8c18aeffcecb9aad7d58cffbb5.gif)](https://gyazo.com/97356e8c18aeffcecb9aad7d58cffbb5)


エラー一覧ページ
全体のエラーを一覧で見れる
[![Image from Gyazo](https://i.gyazo.com/385a8459c1fd6b6be6e651a344d34b34.png)](https://gyazo.com/385a8459c1fd6b6be6e651a344d34b34)


### データベース設計	ER図等を添付。

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

- has_many :prototype

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

[![Image from Gyazo](https://i.gyazo.com/d4ae805c9ad9baa14a851ca22a15e34b.png)](https://gyazo.com/d4ae805c9ad9baa14a851ca22a15e34b)


### Association

- belongs_to :room
- belongs_to :user 

### ローカルでの動作方法	git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記述。この時、アプリケーション開発に使用した環境を併記することを忘れないこと（パッケージやRubyのバージョンなど）。
ruby 2.6.5
Rails 6.0.3.6