import 'package:flutter/material.dart';

import '../models/raw_models/bar_choices.dart';
import '../views/music_view.dart';

class Home extends StatefulWidget {

  const Home({Key? key}) : super(key: key);


  @override
  State<Home> createState() => _HomeState();

}

class _HomeState extends State<Home> {
  int currentindex=0;
  List<BarChoice> items=[
    BarChoice(label: "Musique", iconData: Icons.music_note, page: MusicView()),
    BarChoice(label: "Favoris", iconData: Icons.whatshot, page: Container(child: Text("Blabl"),)),
    BarChoice(label: "Recherche", iconData: Icons.search, page: Container(child: Text('Bloblo'),))
  ];
  @override
  void initState(){

  }

  @override
  void dispose(){

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(10),
            child:Column(
              mainAxisSize: MainAxisSize.max,

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Spacer(),
                    Icon(Icons.radio),
                    Icon(Icons.doorbell),
                    Icon(Icons.settings)
                  ],
                ),
                items[currentindex].getTitleForAppBar()
              ],
            ) ,
          ),
        ),
      ),
      body: items[currentindex].page,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:currentindex ,
        items: items.map((i)=>i.getItem()).toList(),
        onTap: barTapped,
      ),
    );


  }


  barTapped(int index){

    setState(
        (){
          currentindex=index;
        }
    );
    }

}
