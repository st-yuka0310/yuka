#!/bin/sh
# src/app.html を iPhone のホーム画面に追加できる index.html に包む
set -e
cd "$(dirname "$0")"
{
  printf '%s\n' '<!doctype html>' '<html lang="ja">' '<head>' \
    '<meta charset="utf-8">' \
    '<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">' \
    '<meta name="apple-mobile-web-app-capable" content="yes">' \
    '<meta name="apple-mobile-web-app-title" content="自炊貯金">' \
    '<meta name="apple-mobile-web-app-status-bar-style" content="default">' \
    '<meta name="theme-color" content="#2F7A4A">' \
    '<link rel="manifest" href="manifest.webmanifest">' \
    '<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}[hidden]{display:none!important}</style>' \
    '</head>' '<body>'
  cat src/app.html
  printf '%s\n' '</body>' '</html>'
} > index.html
echo "index.html を作りました"
