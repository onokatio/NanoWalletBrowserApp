# NanoWalletBrowserApp

# **注意 これは開発版です。開発者は、このプログラム、また関連するもので生じた一切の責任を負いません。完全な自己責任で使用してください。**

**English doc is README-en.md**

## これは何？
New Economy Movementの総合管理ソフト「Nano Wallet」を、様々なブラウザでアプリ・アドオンとして動作させるためのものです。
## 対応ブラウザ


|ブラウザ        |状況                  |
|:-------------:|:--------------------:|
|Chrome アプリ   |一応動く               |
|Chrome 拡張機能|一応動く               |
|Firefox アドオン|作成中                 |

## ビルドの仕方
※ビルドには、GNU make、npm、nodejs、gulpが必要です。

ダウンロードしたら、makeしてください。何も指定せずにmakeすると、dist/にブラウザアプリ・アドオンのインストール形式のファイルが生成されます。

```
$ make
```

もし特定のブラウザアプリ・アドオンだけをビルドしたいときは、以下のように入力してください。
```
$ make chrome_app         #chromeアプリ版
$ make chrome_extension   #chrome拡張機能版
$ make firefox            #firefoxアドオン版
```

