# UCHINAI — システム開発内製化 支援サービス（株式会社L.Zone）

https://uchinai.exbridge.jp/

株式会社エクスブリッジの「Kurage バイブプロトタイプ制作サービス」を、
株式会社L.Zone が **UCHINAI** としてOEM提供するための静的サイト。

## 構成

| | |
|---|---|
| `public/index.html` | サービス紹介（1枚もの） |
| `public/.htaccess` | heteml は .htaccess でPHPのバージョンを選ぶ。指定しないと 5.6 で動く |
| `scripts/deploy.sh` | `/web/uchinai_exbridge_jp` へFTP配置 |

## 注文登録はここに置かない

申し込みは `kurage.exbridge.jp/vibe-prototype.php?brand=uchinai` を共用する。
注文台帳・請求書PDF・PayPal決済の仕組みを2箇所に持つと、必ず片方が古くなるため。

ブランドとプランはクエリで切り替わる（実装は kurage_web/vibe-prototype.php の `vibe_brands()`）。

| リンク | 表示 | 金額 |
|---|---|---|
| `?brand=uchinai` | UCHINAI 注文登録 | 100,000円（税別）〜 |
| `?brand=uchinai&plan=standalone` | 同上 | 100,000円（税別） |
| `?brand=uchinai&plan=install` | 同上 | 200,000円（税別） |

`brand` を付けないと従来どおり Kurage として動く。

## 配色

l-zone.net から継承。主色は濃紺 `#1b1b51`。
