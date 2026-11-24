#!/bin/sh
# nagasaki_site（Artifact版）から GitHub Pages 用のファイルを作る
set -e
SRC=/c/Users/ejish/Desktop/pppp/boat/nagasaki_site
DST=/c/Users/ejish/Desktop/pppp/boat/nagasaki_pages
rm -rf "$DST/plans" "$DST/tiles"
cp -r "$SRC/plans" "$SRC/tiles" "$DST/"
{ printf '<!doctype html><html lang="ja"><head></head><body>\n'; cat "$SRC/index.html"; printf '\n</body></html>\n'; } > "$DST/index.html"
touch "$DST/.nojekyll"
