import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:cookbook/NavigatorBar/NavigationBar.dart';

// void main() => runApp(const MyApp());
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //Initialialze firebase App
  Future<FirebaseApp> _initializeFirebase() async =>
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: _initializeFirebase(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return const NavigatorExample();
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
      // theme: ThemeData(
      //   // useMaterial3: true,
      //   primarySwatch: Colors.blue,
      // ),
      // home: const NavigatorExample(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//   // This class is the configuration for the state.
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
