# 簡易仕様書
### 作者
井上裕太

### アプリ名
PresentFoods

#### コンセプト
すぐ近くのお店に気持ちよく食事にいきたくなるように。

#### こだわったポイント
他の検索項目も入れようと思いましたが、UI,UXを意識してシンプルに現在地周辺のお店を探せることに特化しました。
また、気持ちよく食事に行きたくなるような綺麗目なデザインを意識しました。

### 公開したアプリの URL（Store にリリースしている場合）
https://fenrir-task-app.herokuapp.com/
*herokuにデプロイしました（すごく重たいです）

### 該当プロジェクトのリポジトリ URL（GitHub,GitLab など Git ホスティングサービスを利用されている場合）
https://github.com/iyuta1124/fenrir_task

## 開発環境
### 開発環境
Visual Studio Code version 1.44
### 開発言語
Ruby 2.6.3,Ruby on Rails 5.1.6
## 動作対象端末・OS
### 動作対象OS
Mac OS safari,Google chromeで動作確認済み

## アプリケーション機能

### 機能一覧
- 現在地情報取得：GeolocationAPIを使用して現在地の緯度、経度を取得する。
- レストラン検索：ぐるなびAPIを使用して、現在地周辺の飲食店を検索する。(現在地からの検索半径を指定できる) 
- レストラン情報取得：ぐるなびAPIを使用して、飲食店の詳細情報を取得する。

### 画面一覧
- 検索画面：条件を指定してレストランを検索する。
- 一覧画面：検索結果の飲食店を一覧表示する。
- 店舗詳細画面：一覧画面で選択した飲食店の詳細情報を表示する。

### 使用しているAPI,SDK,ライブラリなど
- ぐるなびAPI
- GeolocationAPI

### アドバイスして欲しいポイント
- 全体的なコードレビューをして欲しいです。
- セキュリティ面での対策を知りたいです。現在GeolocationAPIで位置情報を取得した際にGETでパラメータを送信しているため、緯度経度がURLに記載されてしまっています。ajaxを使えばうまくできそうな気がしたのですが、実装できませんでした。
- Webデザインを作成する際のフェンリルさんが意識していることが知りたいです。「心から行きたいと思える食事にいく」というテーマでデザインしたつもりですが、改善点を指摘いただけるとありがたいです。

### 自己評価
シンプルにわかりやすく必要最低限の機能とコンセプトを意識して実装できたのは良かったと思います。しかし、まだまだ改善の余地が多々あります。一番に現在地取得の読み込みの遅さなど速度的な面での改善を実施しなければいけないと考えています。現在地読み込みからの検索一覧のページに遷移する際にJavascriptを使ってNowLoadingなどの実装を行うことがユーザーを離脱させないために必要だと考えられます。詳細画面に関しては、GoogleMapで地図を出力することで、ユーザーがその店舗にアクセスしやすいようにUI,UXをさらに向上させられるとも考えています。また、経度、緯度などの個人情報がURLに記載されてしまっているため、他のユーザーからアクセスされないような方法を施す必要があるとも考えています。私自身JavaScriptに対する知見がまだまだ浅いため、しっかり学習して顧客やユーザーにとって本当に必要な機能を実施できるように取り組んでいきたいです。
