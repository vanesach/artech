
import 'package:flutter/material.dart';

import '../../Utils/TextApp.dart';
import '../../Widgets/Design/DesignWidgets.dart';
import '../../Widgets/components/Buttons/myLoginButton.dart';
import 'loginScreen.dart';

class WelcomeScreen extends StatefulWidget {
 // const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

/*Widget _loginButton(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(top: 50.0, bottom: 25),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5.0,
      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),)),
      padding: EdgeInsets.only(top: 15.0, bottom: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      color: Colors.white,
      child: Text(
        TextApp.LOGIN,
        style: TextStyle(
            color: Theme.of(context).primaryColor,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold),
      ),
    ));
  
}*/

Widget _signUpButton(BuildContext context) {
 return Container(
    padding: EdgeInsets.only(top: 50.0, bottom: 25),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5.0,
      onPressed: () => print('boton registro sesion pulsado'),
        padding: EdgeInsets.only(top: 15.0, bottom: 15),
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      color: Colors.white,
      child: Text(
        TextApp.SINGUP,
        style: TextStyle(
            color: Theme.of(context).primaryColor,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold),
      ),
    ),
  );
}
      
     // child: child)
   /* child: OutlinedButton(
      borderSide: BorderSide(color: Colors.white),
      highlightBorderColor: Theme.of(context).primaryColorLight,
      padding: EdgeInsets.all(15.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      onPressed: () => print('boton registro pulsado'),
      child: Text(
        TextApp.SINGUP,
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    ),
  ));
}*/

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: DesignWidgets().linearGradientMain(context),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DesignWidgets().titleCustom(),
                   MyLoginButton(
                    text: TextApp.LOGIN, 
                    colorText: Theme.of(context).primaryColor,
                    colorButtonBackground: Colors.white, widgetToNavigate: LoginScreen()),
                  _signUpButton(context),
                ]),
          ),
        ),
      ),
    );
  }
}

