#!/bin/bash
# Deploy aula-ia-do-zero: copy from Downloads → commit → push → Vercel auto-deploys
cd "$(dirname "$0")"
cp ~/Downloads/aula-ia-do-zero.html index.html
git add -A
git commit -m "Update aula content $(date '+%Y-%m-%d %H:%M')" 2>/dev/null
git push origin main
echo "✓ Pushed — Vercel will deploy automatically in ~10s"
echo "→ https://aula-ia-do-zero.vercel.app"
