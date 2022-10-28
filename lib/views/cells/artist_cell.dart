import 'package:flutter/material.dart';

import '../../models/raw_models/artist.dart';
class ArtistCircleCell extends StatelessWidget {
  final Artist artist;
  final double height;
  const ArtistCircleCell({Key? key,required this.artist,required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: ClipOval(
          child: Image.network(artist.urlImage,width:height ,height:height ,fit: BoxFit.cover,),
        ),
      ),

    )

    ;
  }

  ontap(){

  }
}
