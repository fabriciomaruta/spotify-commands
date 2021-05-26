import spotipy
import sys
from spotipy.oauth2 import SpotifyClientCredentials

# use spotify credentials
sp = spotipy.Spotify(auth_manager=SpotifyClientCredentials(client_id='', client_secret=''))
arg=sys.argv
arg.pop(0)

query=' '.join(arg)

results = sp.search(q=query, limit=1)
for idx, track in enumerate(results['tracks']['items']):
    print(track['uri'])
