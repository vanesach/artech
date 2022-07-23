import 'package:flutter/material.dart';
//import 'package:firebase_core_web/firebase_core_web.dart';

//import 'package:flutter_web_plugins/flutter_web_plugins.dart';
//import 'package:firebase_core/firebase_core.dart';
//import 'firebase_options.dart';

/*void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  var defaultFirebaseOptions;
  await Firebase.initializeApp(
    options: defaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}*/


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      theme: ThemeData(primarySwatch: Colors.grey),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<String> image = [
    "assets/images/avamujer0.png",
    "assets/images/avamujer.png",
    "assets/images/avahombre.png",
    "assets/images/avamujer1.png",
    "assets/images/avahombre0.png",
    "assets/images/avamujer.png",
    "assets/images/avahombre3.png",
    "assets/images/avamujer2.png",
    "assets/images/avahombre1.png",
    "assets/images/avamujer3.png",
    "assets/images/avamujer4.png",
    "assets/images/avahombre6.png",
    "assets/images/avamujer.png",
    "assets/images/avahombre2.png",
    "assets/images/avamujer5.png",
    "assets/images/avahombre.png",
    "assets/images/avamujer6.png",
    "assets/images/avahombre4.png",
    "assets/images/avamujer7.png",
    "assets/images/avamujer8.png",
    "assets/images/avahombre5.png",
    "assets/images/avamujer0.png",
    "assets/images/avamujer.png",
    "assets/images/avahombre.png",
    "assets/images/avamujer1.png",
    "assets/images/avahombre0.png",
    "assets/images/avamujer.png",
    "assets/images/avahombre3.png",
    "assets/images/avamujer2.png",
    "assets/images/avahombre1.png",
    "assets/images/avamujer3.png",
    "assets/images/avamujer4.png",
    "assets/images/avahombre6.png",
    "assets/images/avamujer.png",
    "assets/images/avahombre2.png",
    "assets/images/avamujer5.png",
    "assets/images/avahombre.png",
    "assets/images/avamujer6.png",
    "assets/images/avahombre4.png",
    "assets/images/avamujer7.png",
    "assets/images/avamujer8.png",
    "assets/images/avahombre5.png",
    "assets/images/avamujer0.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Agenda',
          style: TextStyle(color: Colors.white), 
        ),
           leading: CircleAvatar( 
          backgroundImage: AssetImage(image[1]), 
          radius: 20,
        ),
      ),
    
      body: ListView.builder(
         itemCount: image.length, 
        itemBuilder: (BuildContext context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(image[index]),
                radius: 20,
              ),
              title:const Text('Nombre Apellido'),
              subtitle:const Text('Cel: 00-0000-0000'),
            ),
          );
        },
      ),
    );
  }
}



