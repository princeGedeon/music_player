import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicplayer/models/raw_models/artist.dart';
import 'package:musicplayer/models/services/music_datas.dart';

import '../../models/services/musichandler.dart';
import '../cells/artist_cell.dart';

class ArtistContainer extends StatelessWidget {
  final List<Artist> artists=MusicHandler().allArtist();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text("Artistes",style: GoogleFonts.signika(fontSize:20)),
          Container(
            height: 90,
            child: ListView.builder(
                itemCount: artists.length,
                scrollDirection: Axis.horizontal,
                itemBuilder:  ((context,index)=>ArtistCircleCell(artist: artists[index], height: 85,))

            ),
            ),
          
        ],
      ),
    );
  }
}
