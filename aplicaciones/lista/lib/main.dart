import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';



//void main()=> runApp(const MyApp());
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String title = 'Setup Firebase';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', debugShowCheckedModeBanner: false,
      theme: ThemeData(
     
        primarySwatch: Colors.blue, 
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

 // int _counter = 0;

 /* void _incrementCounter() {
    setState(() {
    
      _counter++;
    });
  }*/

  @override
  Widget build(BuildContext context) {
final controller = TextEditingController();
    return Scaffold(
       
      appBar: AppBar(
      
        title: const TextField(),
        actions:[
           IconButton(
          icon: const Icon(Icons.add),
        onPressed: (){
          final name = controller.text;
          
    Future createUser({required String name}) async {
      /// Reference to document
      final docUser = FirebaseFirestore.instance.collection('Users').doc();

      final user = User(
        id: docUser.id,
        name: name, 
        age: 21, 
        birthday: DateTime(2001,7,28));
       
      /// Create document and write data to Firebase
     final json = user.toJson();
    }

          createUser(name:name);
        },
        ),
           
        ],
      ),
     /* body: Center(
      
        child: Column(
    
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
           /* Text(
              '$_counter',
              s*/
          ],
        ),
      ),*/
    /*  floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), */
    );

  }
}

class User{
  String id;
  final String name;
  final int age;
  final DateTime birthday;

  User({
    this. id = '',
    required this.name,
    required this.age,
    required this.birthday,

  });

  Map<String, dynamic> toJson()=>{
    'id': id,
    'name': name,
    'age': age,
    'birthday': birthday
  };
}

/*import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

//void main()=> runApp(MyApp());
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: showBottomSheet,
          );
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('Todo App'),
        centerTitle: true,
      ),
      body: const Center(child: Text('Our Todo Will Be Here')),
    );
  }
}
Widget showBottomSheet(BuildContext context) {
  String? value;
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Add Todo',
              hintText: 'Enter An Item',
            ),
            // ignore: no_leading_underscores_for_local_identifiers
            onChanged: (String _val) {
              value = _val;
            },
          ),
        ),
        TextButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlueAccent)),
            onPressed: () {
              // Todo: The Create Functionality will be here
            },
            child: const Text(
              'ADD',
              style: TextStyle(color: Colors.white),
            ))
      ],
    ),
  );
}*/












/*import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

final db = FirebaseFirestore.instance;
String? value;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FloatingActionButton(
        onPressed: () {
          // When the User clicks on the button, display a BottomSheet
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return showBottomSheet(context, false, null);
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('Todo App'),
        centerTitle: true,
      ),
      body: StreamBuilder(
        // Reading Items form our Database Using the StreamBuilder widget
        stream: db.collection('todos').snapshots(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemCount: snapshot.data?.docs.length,
            itemBuilder: (context, int index) {
              DocumentSnapshot documentSnapshot = snapshot.data.docs[index];
              return ListTile(
                title: Text(documentSnapshot['todo']),
                onTap: () {
                  // Here We Will Add The Update Feature and passed the value 'true' to the is update
                  // feature.
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return showBottomSheet(context, true, documentSnapshot);
                    },
                  );
                },
                trailing: IconButton(
                  icon: const Icon(
                    Icons.delete_outline,
                  ),
                  onPressed: () {
                    // Here We Will Add The Delete Feature
                    db.collection('todos').doc(documentSnapshot.id).delete();
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
showBottomSheet(
    BuildContext context, bool isUpdate, DocumentSnapshot? documentSnapshot) {
  // Added the isUpdate argument to check if our item has been updated
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: TextField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              // Used a ternary operator to check if isUpdate is true then display
              // Update Todo.
              labelText: isUpdate ? 'Update Todo' : 'Add Todo',
              hintText: 'Enter An Item',
            ),
            onChanged: (String _val) {
              // Storing the value of the text entered in the variable value.
              value = _val;
            },
          ),
        ),
        TextButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Colors.lightBlueAccent),
            ),
            onPressed: () {
              // Check to see if isUpdate is true then update the value else add the value
              if (isUpdate) {
                db.collection('todos').doc(documentSnapshot?.id).update({
                  'todo': value,
                });
              } else {
                db.collection('todos').add({'todo': value});
              }
              Navigator.pop(context);
            },
            child: isUpdate
                ? const Text(
                    'UPDATE',
                    style: TextStyle(color: Colors.white),
                  )
                : const Text('ADD', style: TextStyle(color: Colors.white))),
      ],
    ),
  );
}*/



