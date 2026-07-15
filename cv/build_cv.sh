#!/usr/bin/env bash
set -euo pipefail

CV_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT_DIR="$(cd "$CV_DIR/.." && pwd)"
BUILD_DIR="$CV_DIR/build"
PUBLIC_DIR="$ROOT_DIR/files/cv"

mkdir -p "$BUILD_DIR" "$PUBLIC_DIR"

latexmk \
  -pdf \
  -interaction=nonstopmode \
  -halt-on-error \
  -outdir="$BUILD_DIR" \
  "$CV_DIR/CV_Giometti.tex"

cp "$BUILD_DIR/CV_Giometti.pdf" "$PUBLIC_DIR/CV_Giometti.pdf"

echo "Built: $PUBLIC_DIR/CV_Giometti.pdf"
