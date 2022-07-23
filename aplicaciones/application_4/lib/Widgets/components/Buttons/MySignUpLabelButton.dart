// ignore_for_file: deprecated_member_use, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../Utils/TextApp.dart';

class MySignUpLabelButton extends StatefulWidget {

  final String firstText;
  final String secondText;
  final Color secondTextColor;
  final Widget widgetToNavigate;

  const MySignUpLabelButton(
    { this.firstText,
      this.secondText,
      this.secondTextColor,
      this.widgetToNavigate});

  @override
  State<MySignUpLabelButton> createState() => _MySignUpLabelButtonState();
}

class _MySignUpLabelButtonState extends State<MySignUpLabelButton> {
  get widgetToNavigate => widgetToNavigate;


  @override
  Widget build(BuildContext context) {
      return FlatButton(
    onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder:(context)=> widgetToNavigate)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text( TextApp.DONT_HAVE_ACCOUNT,
        style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
        ),
       Padding(
        padding: const EdgeInsets.only(left: 10),),
        Text(TextApp.SINGUP,
        style: TextStyle( 
        color: Theme.of(context).primaryColorDark,
        fontSize: 13,
        fontWeight: FontWeight.w600),
        ),
    ],
    ),
  );
}
}