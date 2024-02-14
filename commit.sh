#!/bin/bash
declare ver="${1:-}"
if [[ -z "$ver" ]]; then
  echo "error: missing version."
  exit 2
fi
git add releases/com/github/glhez/parent site/com.github.glhez.parent
git commit -m "com.github.glhez.parent v$ver + site" releases/com/github/glhez/parent site/com.github.glhez.parent
