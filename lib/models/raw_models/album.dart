import 'package:musicplayer/models/raw_models/artist.dart';
import 'package:musicplayer/models/raw_models/song.dart';

class Album{
  String title;
  Artist artist;
  List<Song> songs;

  Album({required this.title,required this.artist,required this.songs});
}