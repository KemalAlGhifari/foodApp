import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tugasmokeup/screens/login.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';




void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
   FlutterNativeSplash.remove();
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const login(),
      
    );
  }
}
