import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class DesignWidgets {
  LinearGradient linearGradientMain(BuildContext context) {
    return LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Theme.of(context).primaryColorLight,
                Theme.of(context).primaryColor,        
        ]);
  }
  RichText titleCustom(){
    return RichText(textAlign: TextAlign.center,
    text: TextSpan(
      text: 'Shopping',
      style: GoogleFonts.portLligatSans(fontSize:30, fontWeight: FontWeight.w700, color: Colors.white60),
      children: [
        TextSpan(
          text: 'List',
           style: GoogleFonts.portLligatSans(fontSize:30,  color: Colors.white),
        )
      ]),
    );
 
}

 RichText titleCustomDark(){
    return RichText(textAlign: TextAlign.center,
    text: TextSpan(
      text: 'Shopping',
      style: GoogleFonts.portLligatSans(fontSize:30, fontWeight: FontWeight.w700, color: Colors.grey),
      children: [
        TextSpan(
          text: 'List',
           style: GoogleFonts.portLligatSans(fontSize:30,  color: Colors.black),
        )
      ]),
    );
  }
}