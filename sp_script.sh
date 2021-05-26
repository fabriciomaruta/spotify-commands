#!/bin/bash

Q="$@"
echo $Q
SPTFY_URI=$( \
             python3 spotipy-test.py $Q
         )
echo $SPTFY_URI
dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.OpenUri string:$SPTFY_URI
