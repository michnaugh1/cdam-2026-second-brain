#!/usr/bin/env bash
# Build PDF versions of the fictional case-file documents.
#
# Pipeline: pandoc (Markdown -> .docx) -> LibreOffice headless (.docx -> .pdf).
# Output goes to case-file/pdf/. Re-run any time the Markdown changes.
#
# Requires: pandoc, libreoffice/soffice.
set -euo pipefail

REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="$REPO/case-file"
OUT="$SRC/pdf"
TMP="$(mktemp -d)"
PROFILE="$(mktemp -d)"   # isolated LibreOffice profile so it works even if LO is open

trap 'rm -rf "$TMP" "$PROFILE"' EXIT

mkdir -p "$OUT"

shopt -s nullglob
for md in "$SRC"/*.md; do
  base="$(basename "$md" .md)"
  echo ">> $base"
  pandoc "$md" -o "$TMP/$base.docx"
  soffice --headless \
    "-env:UserInstallation=file://$PROFILE" \
    --convert-to pdf --outdir "$OUT" "$TMP/$base.docx" >/dev/null 2>&1
done

echo
echo "PDFs written to: $OUT"
ls -1 "$OUT"/*.pdf
