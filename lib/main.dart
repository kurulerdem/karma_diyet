import 'package:flutter/material.dart';
import 'package:karmadiyet/screens/diyetisyenler_screen.dart';
import 'package:karmadiyet/screens/home_screen.dart';
import 'package:karmadiyet/screens/login_screen.dart';
import 'package:karmadiyet/screens/register_screen.dart';
import 'screens/welcome_screen.dart';
void main() {
  runApp(KarmaDiyet());
}

class KarmaDiyet extends StatefulWidget {
  @override
  _KarmaDiyetState createState() => _KarmaDiyetState();
}

class _KarmaDiyetState extends State<KarmaDiyet> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes:  {
        WelcomeScreen.id:(context) => WelcomeScreen(),
        RegisterScreen.id:(context) => RegisterScreen(),
        LoginScreen.id:(context) => LoginScreen(),
        HomeScreen.id:(context) => HomeScreen(),
        DiyetisyenlerScreen.id:(context)=>DiyetisyenlerScreen(),


      },
    );
  }
}



