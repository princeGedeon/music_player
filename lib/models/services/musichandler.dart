import 'package:musicplayer/models/raw_models/album.dart';
import 'package:musicplayer/models/services/music_datas.dart';

import '../raw_models/artist.dart';

class MusicHandler{
  final datas=MusicDatas();
  List<Artist> allArtist(){
    List<Artist> artists=[];
    final all=datas.allDatas();
    for (var song in all){
      if(!artists.contains(song.artist)){
        artists.add(song.artist);
      }
    }
    return artists;

  }

  List<Album> allAbums(){
    List<Album> albums=[];
    final all=datas.allDatas();

    for (var song in all){
      final singer=song.artist.name;
      final albumTitle=song.album;
      Album newAlbum=albums.firstWhere((album) => (album.artist.name ==singer && album.title==albumTitle),
          orElse: ()=>Album(artist: song.artist,title: song.album,songs: [song]));
      
      if (!newAlbum.songs.contains(song)) newAlbum.songs.add(song);
      if (!albums.contains(newAlbum)) albums.add(newAlbum);
    }

    return albums;

  }
}