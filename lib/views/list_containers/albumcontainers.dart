import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicplayer/models/services/musichandler.dart';

import '../../models/raw_models/album.dart';
import '../cells/album_cell.dart';

class AlbumsContainer extends StatelessWidget {
 List<Album> albums=MusicHandler().allAbums();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Albums',style: GoogleFonts.signika(fontSize: 20),),
          Container(
            height: 300,
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 8,crossAxisSpacing: 10),
                itemBuilder:((context,index)=>AlbumCell( album: albums[index],)),
              itemCount: albums.length,

            ),
          )
        ],
      ),
    );
  }
}
