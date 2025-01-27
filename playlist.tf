resource "spotify_playlist" "bollywood" {
  name = "bollywood"
  tracks = ["4uNxdQ1L4Xa52MWX864QhW", "34Fh4HXZmnuBdtgejWUZg2"]
}
data "spotify_search_track" "Arijit" {
  artist = "Arijit Singh"
}
resource "spotify_playlist" "vibe" {
  name = "vibe"
  tracks = [ data.spotify_search_track.Arijit.tracks[0].id,
  data.spotify_search_track.Arijit.tracks[1].id ,
  data.spotify_search_track.Arijit.tracks[2].id ]
}