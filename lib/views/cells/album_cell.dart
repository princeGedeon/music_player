import 'package:flutter/material.dart';
import 'package:musicplayer/models/enums/playlist.dart';
import 'package:musicplayer/screens/playlistcontroller.dart';

import '../../models/raw_models/album.dart';

class AlbumCell extends StatelessWidget {
  final Album album;
  const AlbumCell({Key? key,required this.album}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return PlayListController(playlist: album.songs, title: album.title, type: Playlist.album);
        }));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(album.songs[0].thumb,fit: BoxFit.cover,),

      ),
    );
  }
}
