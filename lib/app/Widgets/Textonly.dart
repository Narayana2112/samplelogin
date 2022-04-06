import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Utills/Colours.dart';

class Textonly extends StatelessWidget {
   String ?settext;
   Color ?setcolor;
   dynamic ?fontweitgt;
   Color ?bgcolor;
   double ? fontsize;
  Textonly(
  {Key ?key,
  this.settext,
  this.bgcolor,
  this.setcolor,
  this.fontweitgt,
  this.fontsize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(settext!,style: GoogleFonts.sourceSansPro(
          fontStyle: FontStyle.normal,
          color: setcolor,
          fontSize:fontsize,
          fontWeight: fontweitgt),
      ),
    );
  }
}
