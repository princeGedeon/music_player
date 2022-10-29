import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicplayer/screens/playercontroller.dart';

import '../models/enums/playlist.dart';
import '../models/raw_models/song.dart';

class PlayListController extends StatelessWidget {
  final List<Song> playlist;
  final String title;
  final Playlist type;

  const PlayListController({Key? key, required this.playlist, required this.title, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(title),
      ),
      body:SafeArea(
        child: Column(
          children: [
            WidgetTopView(MediaQuery.of(context).size),
              Expanded(
                child: ListView.separated(itemBuilder: (context,index){
                  return ListTile(
                    leading: Image.network(playlist[index].thumb),
                    title:Text(playlist[index].title),
                    trailing: Icon(Icons.arrow_right),
                    onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: ((context)=>PlayerController())));
                    },
                  );
                },
                    separatorBuilder: ((context,index)=> const Divider()),
                    itemCount: playlist.length),
              )
          ],
        ),
      ),
    );
  }

  WidgetTopView(Size size){
    
    switch(type){
      case Playlist.album:return Container();
        
      case Playlist.album:
        return Container(
          child: Column(
            children: [


              Image.network(playlist.first.artist.urlImage,height: size.height/4,),
              Text(playlist.first.album,style: GoogleFonts.signika(fontSize: 25),),
              Text(playlist.first.artist.name,style: GoogleFonts.signika(fontSize: 16),)

            ],
          ),
        );
        
        
      case Playlist.genre:return Container();
        
      default: return Container(
        child: Text("All"),
      );
    }
    
  }
}
