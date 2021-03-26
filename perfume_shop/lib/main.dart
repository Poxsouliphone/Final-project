import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:perfume_shop/SignUp.dart';
import 'package:perfume_shop/login.dart';
import 'package:perfume_shop/mainScreen.dart';
import 'package:perfume_shop/pageOne.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',

      routes: {
        '/login'   :(context) => login(),
        '/screen' :(context) => MainScreen(),
        '/sigup' :(context) => SignUp(),
      },
    );

  }
}