import 'package:flutter/material.dart';

import 'list_containers/albumcontainers.dart';
import 'list_containers/artistcontainer.dart';

class MusicView extends StatelessWidget {
  const MusicView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Divider(),
          //Container pour les artistes
          ArtistContainer(),
          const Divider(),
          //Container pour les albums
          AlbumsContainer(),
          const Divider(),
          //Container pour les Genres de musique
        ],
      ),
    );
  }
}
