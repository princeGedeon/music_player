import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicplayer/models/services/musichandler.dart';

import '../../models/enums/genre.dart';
import '../cells/gennre_cell.dart';

class GenreContainer extends StatelessWidget {
  List<Genre> genres=MusicHandler().allGenres();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Genres musicaux",style: GoogleFonts.signika(fontSize:20),),
          Container(
            height: 75,
            child: ListView.builder(
                itemCount: genres.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context,index) => GenreCell(genre: genres[index],) )

            ),
          ),
          Text("hi")
        ],
      ),
    );
  }
}
