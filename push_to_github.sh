#!/usr/bin/env bash
# Run this on your own laptop (needs git + your GitHub login / token).
# Usage: unzip Deep_Learning.zip, cd Deep_Learning, then: bash push_to_github.sh
set -e
git init
git branch -M main
git remote add origin https://github.com/auxer4/Deep_Learning.git 2>/dev/null || git remote set-url origin https://github.com/auxer4/Deep_Learning.git
git pull origin main --allow-unrelated-histories --no-edit || true   # keeps your existing Assignment 1 files
git add .
git commit -m "Add Deep Learning assignments 1-10"
git push -u origin main
