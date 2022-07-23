import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'MyApp',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
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
    "assets/images/avamujer0.png",
    "assets/images/avamujer.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Lista de empleados',
            style: TextStyle(color: Colors.white),
          ),
          leading: CircleAvatar(
            backgroundImage: AssetImage(image[1]),
            radius: 20,
          ),
        ),
        body: SafeArea(
            child: GridView.builder(
                itemCount: image.length,
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (context, int index) {
                  return Card(
                    color: Colors.green[100],
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(image[index]),
                        radius: 20,
                     ),
                      trailing: const Icon(Icons.edit),
                      title: const Text('Nombre Apellido'),
                      subtitle: const Text('Cel: 00-0000-0000'),
                   
                    ),
                  
                  );
                })));
  }
}

  


