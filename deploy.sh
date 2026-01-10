#!/usr/bin/env bash

echo "deploying math136-2026Sp-site"
cd /home/george/Prof-VC/classes/2026-Sp-Math136/
git add .
read -p "Commit message: " msg
git commit -m "$msg"
git push origin main
