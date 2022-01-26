| カテゴリー                                      | 備考                                                                                                                                                                                                                                                                                                                                                                                                                   |
| ----------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| アプリケーション名                              | Menu Records                                                                                                                                                                                                                                                                                                                                                                                                           |
| アプリケーション概要                            | 夕食の献立てを決める際、過去にどんなものを作ったか、どんなレシピだったかを記録することで、今日何を作るかを決める手助けをするアプリケーション                                                                                                                                                                                                                                                                           |
| URL                                             | https://menu-records.herokuapp.com/                                                                                                                                                                                                                                                                                                                                                                                    |
| テスト用アカウント                              | メールアドレス：testmail@gmail.com<br>パスワード：123456                                                                                                                                                                                                                                                                                                                                                               |
| 利用方法                                        | 1. トップページからユーザー新規登録を行う。<br>2. 「レシピ登録」からレシピ（タイトル、レシピ URL、画像、メモ）を登録する。<br>3. 「レシピ一覧」からレシピをクリックし、レシピの詳細を確認する。<br>4. 「作った日を登録」から料理内容（作成日、レシピ）を登録する。<br>5. 「作った記録」から料理した作成履歴を確認することができる。<br>6. 「レシピ一覧」からレシピを作った回数、最後に作った日を確認することができる。 |
| アプリケーションを作成した背景                  | 自身が毎日の献立て決めに悩んでいたことから、少しでもストレスを減らしたいと考えた。<br>既存のアプリケーションは作ったことのないレシピを探す際には便利だが、自分が今までどんな料理を作ってきたか、どのレシピで作ったかを記録したかったので自作することにした。                                                                                                                                                           |
| 洗い出した要件                                  | https://docs.google.com/spreadsheets/d/12PA1mgZ55Vkpj1scc748OMzBb2tkV5XH0-ykpk2csc8/edit?usp=sharing                                                                                                                                                                                                                                                                                                                   |
| 実装した機能についての画像や GIF およびその説明 | [![Image from Gyazo](https://i.gyazo.com/e53405b9692a3efe91f77e0c8543de07.png)](https://gyazo.com/e53405b9692a3efe91f77e0c8543de07)<br>[![Image from Gyazo](https://i.gyazo.com/97e900b05da17e5d7f0a5af736225883.gif)](https://gyazo.com/97e900b05da17e5d7f0a5af736225883)                                                                                                                                             |
| 実装予定の機能                                  | メニューにタグ付け機能を実装予定                                                                                                                                                                                                                                                                                                                                                                                       |
| データベース設計                                | [![Image from Gyazo](https://i.gyazo.com/a4c9314d66cfc8dfa24447d530a3ec01.png)](https://gyazo.com/a4c9314d66cfc8dfa24447d530a3ec01)                                                                                                                                                                                                                                                                                    |
| 画面遷移図                                      | [![Image from Gyazo](https://i.gyazo.com/e32a90b815a874157b0beb92875d4fb0.png)](https://gyazo.com/e32a90b815a874157b0beb92875d4fb0)                                                                                                                                                                                                                                                                                    |
| 開発環境                                        | ・フロントエンド：HTML,CSS / JavaScript<br>・バックエンド：Ruby（ver 2.5.1）/ Ruby on Rails（ver 6.0.4）<br>・インフラ：AWS（S3）,MySQL<br>・テスト：RSpec<br>・テキストエディタ：Visual Studio Code<br>・タスク管理：GitHub プロジェクトボード                                                                                                                                                                        |
| ローカルでの動作方法                            | 以下、コマンドを順に実行してください。<br>% git clone https://github.com/rynao/menu_record.git<br>% cd menu_record<br>% bundle install<br>% yarn install                                                                                                                                                                                                                                                               |
