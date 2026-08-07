#!/usr/bin/env bash
# UCHINAI（株式会社L.Zone）の公開デプロイ。
#   https://uchinai.exbridge.jp/  →  /web/uchinai_exbridge_jp
#
# 静的ページのみ。注文登録は kurage.exbridge.jp/vibe-prototype.php?brand=uchinai
# を共用するため、ここには置かない（2箇所に持つと必ず片方が古くなる）。
set -euo pipefail
cd "$(dirname "$0")/.."
set -a; . /home/kojima/work/aixec/.env; set +a
remote="/web/uchinai_exbridge_jp"
upload() {
  curl --fail --silent --show-error --ftp-create-dirs -T "$1" \
    "ftp://${FTP_USER}:${FTP_PASS}@${FTP_HOST}${remote}/${2}"
  echo "deployed: ${2}"
}
for f in index.html .htaccess robots.txt sitemap.xml; do upload "public/$f" "$f"; done
echo
echo "published: https://uchinai.exbridge.jp/"
