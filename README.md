# 自炊貯金

自炊したら「いくら浮いたか」がわかる、ズボラ向けの節約記録アプリ（試作品）。
要件は [docs/requirements.md](docs/requirements.md) を参照。

## ファイル

- `src/app.html` … アプリ本体（1ファイル、ライブラリなし）
- `build.sh` … `src/app.html` を iPhone のホーム画面に追加できる `index.html` に包む
- `manifest.webmanifest` … ホーム画面用の設定

`src/app.html` を編集したら `./build.sh` を実行して `index.html` を作り直す。
