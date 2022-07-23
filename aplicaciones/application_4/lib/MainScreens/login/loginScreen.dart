// ignore_for_file: deprecated_member_use, duplicate_ignore, unused_element, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:shopping_list/Utils/TextApp.dart';
import 'package:shopping_list/Widgets/Design/DesignWidgets.dart';
import 'package:shopping_list/Widgets/components/Buttons/MyBackButtons.dart';
import 'package:shopping_list/Widgets/components/Buttons/MySignUpLabelButton.dart';
import 'package:shopping_list/Widgets/components/Buttons/myLoginButton.dart';
import 'package:shopping_list/Widgets/components/Containers/containerShape01.dart';
import 'package:shopping_list/Widgets/components/fields/myFieldForm.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'signUp.dart';

class LoginScreen extends StatefulWidget {
//  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget _emailPasswordWidget() {
    return Column(
      children: [
        MyFieldForm(
          tittle: TextApp.EMAIL_ID,
          isPasword: false,
        ), //
        MyFieldForm(
            tittle: TextApp.PASSWORD, isPasword: true), // tapar contraseña
      ],
    );
  }

  Widget _forgottenPassword() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.centerRight,
        child: Text(
          TextApp.FORGOT_PASSWORD,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ));
  }

  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              thickness: 1,
            ),
          ),
        ),
        Text(TextApp.OR),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              thickness: 1,
            ),
          ),
        ),
      ]),
    );
  }

  Widget _signUpLabel() {
    return FlatButton(
      onPressed: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => SignUp())),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            TextApp.DONT_HAVE_ACCOUNT,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
          ),
          Text(
            TextApp.SINGUP,
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
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            ContainerShape01(),
            Container(
              height: double.infinity,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: height * 0.15),
                      child: DesignWidgets().titleCustomDark(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height * 0.10),
                      child: _emailPasswordWidget(),
                    ),
                    MyLoginButton(
                      text: TextApp.LOGIN,
                      colorText: Colors.white,
                      colorButtonBackground: Theme.of(context).primaryColor,
                      widgetToNavigate: LoginScreen(),
                    ),
                    _forgottenPassword(),
                    _divider(),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 13, bottom: 13),
                      // ignore: duplicate_ignore, duplicate_ignore
                      child: GoogleSignInButton(
                        onPressed: () {},
                        // ignore: deprecated_member_use
                        darkMode: false,
                        text: TextApp.GOOGLE_SIGN,
                      ),
                    ),
                    MySignUpLabelButton(
                      firstText: TextApp.DONT_HAVE_ACCOUNT,
                      secondText: TextApp.SINGUP,
                      secondTextColor: Theme.of(context).primaryColorDark,
                      widgetToNavigate: LoginScreen(),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(top: height * 0.25, child: MyBackButton()),
          ],
        ),
      ),
    );
  }
}
