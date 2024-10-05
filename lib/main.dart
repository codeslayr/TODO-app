import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/home_screen.dart';
import 'package:todo_app/login_screen.dart';
import 'package:todo_app/signup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyA-QPGGjhP8GKC_lULalzgXjlpvUOnC6KQ",
      appId: "1:864344193877:android:fd03e597f565cb00f68ddc",
      messagingSenderId: "864344193877",
      projectId: "todo-app-cea18",
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Todo App",
      theme: ThemeData(primarySwatch: Colors.grey, primaryColor: Colors.black),
      home: _auth.currentUser != null ? HomeScreen() : LoginScreen(),
    );
  }
}
