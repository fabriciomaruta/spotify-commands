#!/bin/bash

echo "Installing dependencies..."
pip install -r requirements.txt

read -p "Enter spotipy client ID" client
read -p "Enter spotipy client secret" secret

client_label="os.getenv('CLIENT_ID','')"
secret_label="os.getenv('SECRET','')"

sed -i "s/${client_label}/${client}/g" spotipy-test.py
sed -i "s/${secret_label}/${secret}/g" spotipy-test.py

chmod +x play
chmod +x pp
chmod +x next
chmod +x previous

cp play pp next previous spotipy-test.py /usr/local/bin/
