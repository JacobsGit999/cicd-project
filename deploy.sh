#!/bin/bash

cd ~/cicd-project || exit

git pull origin main

source venv/bin/activate

pip install -r requirements.txt 2>/dev/null || pip install flask

pkill -f app.py

nohup python app.py > app.log 2>&1 &

echo "Deployed successfully"
