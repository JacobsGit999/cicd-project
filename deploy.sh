#!/bin/bash

cd /home/ubuntu/cicd-project

git pull origin main

source venv/bin/activate

pip install -r requirements.txt 2>/dev/null || pip install flask

sudo systemctl restart flaskapp

echo "Deployed successfully"
