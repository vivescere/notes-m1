#!/usr/bin/env bash

# Stop on errors
set -e

./compile-all.sh

msg="$(date)"
[ -n "$*" ] && msg="$*" || true

git add .
git commit -m "$msg"
git push origin master

