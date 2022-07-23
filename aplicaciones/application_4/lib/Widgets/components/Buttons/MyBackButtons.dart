
import 'package:flutter/material.dart';

import '../../../Utils/TextApp.dart';




class MyBackButton extends StatefulWidget {
 
  @override
  State<MyBackButton> createState() => _MyBackButtonState();
}

class _MyBackButtonState extends State<MyBackButton> {
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return FlatButton(
      onPressed:() => Navigator.pop(context),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(children: [
          Icon(Icons.keyboard_arrow_left,
          color: Colors.black38,
          ),
          Text(TextApp.BACK,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black38),)
          
        ]),
      ),
    );
  }
}