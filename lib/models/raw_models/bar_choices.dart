import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BarChoice{
  String label;
  IconData iconData;
  Widget page;

  Icon getIcon(){
    return Icon(iconData);
  }

  Text getTitleForAppBar(){
    return Text(label,style: GoogleFonts.signika(fontSize: 30));
  }
  
  BottomNavigationBarItem getItem(){
    return BottomNavigationBarItem(icon: getIcon(),label: label);
  }

  BarChoice({required this.label,required this.iconData,required this.page});
}