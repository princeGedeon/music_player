import 'package:flutter/material.dart';

import '../../models/raw_models/album.dart';

class AlbumCell extends StatelessWidget {
  final Album album;
  const AlbumCell({Key? key,required this.album}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      
      onTap: (){},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(album.songs[0].thumb,fit: BoxFit.cover,),

      ),
    );
  }
}
