

//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'MainScreens/login/welcomeScreen.dart';
import 'Utils/AssetsImages.dart';
import 'Utils/ConstantsApp.dart';
import 'Utils/TextApp.dart';
import 'Widgets/Design/DesignWidgets.dart';
//import 'dart:developer' as developer;

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
//  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(primarySwatch: Colors.grey),
      title: 'Titulo', debugShowMaterialGrid: false,
      theme: ThemeData(primaryColor: Colors.grey[800]),
      /* theme: ThemeData(
          primaryColor: Colors.green[100],
          primaryColorDark: Colors.green[250],
          primaryColorLight: Colors.grey[800],
          visualDensity: VisualDensity.adaptivePlatformDensity, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.grey[1000]),
      ), */
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
 // const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: SplashScreen(
        seconds: ConstantsApp.TIME_SPLASH_SCREEN,
        navigateAfterSeconds: WelcomeScreen(),
        image: AssetsImages.ImageLogo(),
        photoSize:120 ,
        loaderColor: Theme.of(context).primaryColor,
        loadingText: Text(
          TextApp.LOADING, style: Theme.of(context).textTheme.bodyText1,
        ),
       gradientBackground: DesignWidgets().linearGradientMain(context),
      ),
    
    );
  }
}


/// CODIGO PARA CONECTAR CON FIREBASE

/* --no-sound-null-safety
// flutter pub run flutter_launcher_icons:main

//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'MainScreens/login/welcomeScreen.dart';
import 'Utils/AssetsImages.dart';
import 'Utils/ConstantsApp.dart';
import 'Utils/TextApp.dart';
import 'Widgets/Design/DesignWidgets.dart';
//import 'dart:developer' as developer;

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
//  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(primarySwatch: Colors.grey),
      title: 'Titulo', debugShowMaterialGrid: false,
      theme: ThemeData(primaryColor: Colors.grey[800]),
      // theme: ThemeData(
      //    primaryColor: Colors.green[100],
      //    primaryColorDark: Colors.green[250],
       //   primaryColorLight: Colors.grey[800],
       //   visualDensity: VisualDensity.adaptivePlatformDensity, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.grey[1000]),
     // ), 
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
 // const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: FutureBuilder(
          future: _initializationFirebase,
          builder: (context, snapshot) {
            // check for errors.
            if (snapshot.hasError) {
              // add logs.
              developer.log(TAG + ", Firebase init. DONE");

              return SnackBar(content: Text("Error inicializando Firebase"));
              // kill app.
              //exit(0);
            } else if (snapshot.connectionState == ConnectionState.done) {
              SplashScreen(
                seconds: ConstantsApp.TIME_SPLASH_SCREEN,
                navigateAfterSeconds: WelcomeScreen(),
                image: AssetsImages.ImageLogo(),
                backgroundColor: Colors.white,
                photoSize: 100,
                loaderColor: Theme.of(context).primaryColor,
                loadingText: Text(TextApp.LOADING,
                    style: Theme.of(context).textTheme.bodyText1),
                gradientBackground: DesignWidgets().linearGradientMain(context),
              );
            }
            return CircularProgressIndicator();
          }),

 ignore_for_file: avoid_unnecessary_containers, unused_import, import_of_legacy_library_into_null_safe
// flutter run
  }
}*/