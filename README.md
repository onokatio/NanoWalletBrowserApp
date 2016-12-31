# NanoWalletBrowserApp

## これは何？
New Economy Movementの総合管理ソフト「Nano Wallet」を、様々なブラウザでアプリ・アドオンとして動作させるためのものです。
## ビルドの仕方
ダウンロードしたら、makeしてください。何も指定せずにmakeすると、dist/にブラウザアプリ・アドオンのインストール形式のファイルが生成されます。

```
$ make
```
## インストールの仕方
### Chrome アプリ
1. chrome://extensions/ をブラウザで開いてください。
2. その画面に、dist/chrome_app.crxをドラッグ・アンド・ドロップしてください。
3. ダイアログ通りに進めれば完了です。 chrome://apps/ から起動することができます。またパソコンのスタートメニューやDashにも自動的に追加されます。

### Chrome 拡張機能
作成中
※なお、Chrome拡張はMicrosoft Edge,Opera,Vivaldiで、開発中ですが動作するとの報告があります。
### Firefox アドオン
作成中

