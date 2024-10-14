resource "spotify_playlist" "gg"{
    name = "gg"                                    //FOR SIMPLE USE
    tracks = ["0a56ZS4WFG85imc7Zd3eBu"]
}
data "spotify_search_track" "vilen"{
    artist = "vilen"
}


resource "spotify_playlist" "slim"{
    name = "slimshady"
    tracks = [data.spotify_search_track.vilen.tracks[0].id,data.spotify_search_track.vilen.tracks[1].id,data.spotify_search_track.vilen.tracks[2].id]
}