// ignore_for_file: deprecated_member_use, unused_element

import 'package:flutter/material.dart';
import '../../Utils/TextApp.dart';
import '../../Widgets/components/fields/myFieldForm.dart';




class SignUp extends StatefulWidget {
  //const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

Widget _emailPasswordWidget(){
  return Column(
    children: [
      MyFieldForm(tittle: TextApp.USER_NAME, isPasword: false,),
      MyFieldForm(tittle: TextApp.EMAIL_ID, isPasword: false,), //
      MyFieldForm(tittle: TextApp.PASSWORD, isPasword: true), // tapar contraseña
    ],
  );
}

Widget _signUpLabel(){
  return FlatButton(
    onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder:(context)=> SignUp())),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text( TextApp.I_HAVE_ACCOUNT,
        style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
        ),
       Padding(
        padding: const EdgeInsets.only(left: 10),),
        Text(TextApp.LOGIN,
        style: TextStyle( 
        color: Theme.of(context).primaryColorDark,
        fontSize: 13,
        fontWeight: FontWeight.w600),
        ),
    ],
    ),
  );
}

 

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
 




