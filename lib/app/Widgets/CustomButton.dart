import 'package:flutter/material.dart';

import 'Textonly.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {required this.onTap,
      this.color = Colors.white30,
      this.text,
      this.textcolor,
      this.fontsize,
      this.bordcolor = Colors.orange});
  final Function onTap;
  final Color color;
  final String? text;
  final double? fontsize;
  final Color ?textcolor;
  final Color bordcolor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap(),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Material(
          elevation: 5,
          child: Container(
            height: 36,
            width: double.infinity,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(width: 1, color: bordcolor),
                borderRadius: BorderRadius.circular(5),
                color: color),
            child: Center(
              child: Textonly(bgcolor:textcolor,settext:text,setcolor: textcolor,fontsize:fontsize)
            ),
          ),
        ),
      ),
    );
  }
}
