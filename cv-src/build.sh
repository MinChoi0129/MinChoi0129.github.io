#!/usr/bin/env bash
# Build both CVs and publish them to the site.
#   cv-src/{en,ko}/cv.tex  --pdflatex x2-->  cv-src/{en,ko}/cv.pdf
#   full PDF     -> assets/pdf/cv-{en,ko}.pdf            (download button)
#   page-1 image -> assets/img/cv/cv-{en,ko}-p1.{webp,jpg} (inline preview on /cv)
# Needs pdflatex (TeX Live with kotex), pdftoppm (poppler-utils), and
# python3 with Pillow (WebP support).
# The preview is an image rather than a PDF because the Korean PDF embeds
# ~80 Type1 subfonts (3 MB even for one page) and iframe PDFs render
# unreliably on mobile; a page image is ~200 KB and works everywhere.
set -euo pipefail
cd "$(dirname "$0")"
pdf_out="../assets/pdf"
img_out="../assets/img/cv"
mkdir -p "$img_out"
for lang in en ko; do
  ( cd "$lang" \
    && pdflatex -interaction=nonstopmode -halt-on-error cv.tex >/dev/null \
    && pdflatex -interaction=nonstopmode -halt-on-error cv.tex >/dev/null )
  cp "$lang/cv.pdf" "$pdf_out/cv-$lang.pdf"
  pdftoppm -png -r 192 -f 1 -l 1 -singlefile "$lang/cv.pdf" "$img_out/cv-$lang-p1"
  python3 - "$img_out/cv-$lang-p1" <<'PY'
import os, sys
from PIL import Image
base = sys.argv[1]
im = Image.open(base + '.png').convert('RGB')
im.save(base + '.webp', quality=85, method=6)
im.save(base + '.jpg', quality=86, optimize=True, progressive=True)
os.remove(base + '.png')
print(f'  preview {im.size[0]}x{im.size[1]}: webp {os.path.getsize(base + ".webp")//1024} KB, jpg {os.path.getsize(base + ".jpg")//1024} KB')
PY
  printf '%s: %s pages, full PDF %s KB\n' "$lang" \
    "$(pdfinfo "$lang/cv.pdf" | awk '/^Pages/{print $2}')" \
    "$(( $(stat -c %s "$pdf_out/cv-$lang.pdf") / 1024 ))"
done
