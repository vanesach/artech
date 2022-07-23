import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyFieldForm extends StatelessWidget {

  final String tittle;
  final bool isPassword;

   MyFieldForm({this.tittle, this.isPassword = false, bool isPasword});
  
 
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(tittle, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: TextField(
              obscureText: isPassword,
              decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: Color(0xfff3f4),
                filled: true
              )
            ),
          )
        ],
      )
    );
  }
}