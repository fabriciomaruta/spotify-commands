#!/bin/bash

echo "Installing dependencies..."
pip install -r requirements.txt
echo "Setting credentials..."
source .env

chmod +x play
chmod +x pp
chmod +x next
chmod +x previous

cp play pp next previous spotipy-test.py /usr/local/bin/
