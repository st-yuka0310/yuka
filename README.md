# 自炊貯金

自炊したら「いくら浮いたか」がわかる、ズボラ向けの節約記録アプリ（試作品）。
要件は [docs/requirements.md](docs/requirements.md) を参照。

## ファイル

- `src/app.html` … アプリ本体（1ファイル、ライブラリなし）
- `build.sh` … `src/app.html` を iPhone のホーム画面に追加できる `index.html` に包む
- `manifest.webmanifest` … ホーム画面用の設定

`src/app.html` を編集したら `./build.sh` を実行して `index.html` を作り直す。

## iPhone のホーム画面に置く

1. GitHub のリポジトリで **Settings → Pages** を開き、Source を「Deploy from a branch」、
   Branch を `main`（または作業ブランチ）の `/ (root)` にして保存する
   - 無料プランで Pages を使うにはリポジトリを公開（Public）にする必要がある
2. 数分後に出る URL（`https://st-yuka0310.github.io/yuka/`）を iPhone の **Safari** で開く
3. 共有ボタン → **「ホーム画面に追加」**
4. ホーム画面のアイコンから開くと、全画面のアプリとして動く（オフラインでも開ける）

記録はその iPhone の中に保存される。
