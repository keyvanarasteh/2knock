import 'package:flutter/material.dart';
import 'package:responsive/common/appbar.dart';
import 'package:responsive/screen/HomeScreen.dart';
import 'package:responsive/screen/loginScreen.dart';
import 'package:responsive/screen/sliver.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        routes: {
          '/homeScreen': (context) => HomeScreen(),
          '/sliver': (context) => Slivers(),
        },
        theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
        ),
        home: LoginScreen());
  }
}
