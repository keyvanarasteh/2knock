import 'dart:async';
import 'package:flutter/material.dart';
import 'package:responsive/screen/loginScreen.dart';
import '../common/duration.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = DurationEnum.NORMAL.time;
    return new Timer(duration, loginRoute);
  }

  loginRoute() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: ((context) => LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 91, 122, 202),
              gradient: LinearGradient(
                colors: [
                  (new Color(0xff1f3b83)),
                  Color.fromARGB(255, 4, 10, 12)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Center(child: FlutterLogo())
        ],
      ),
    );
  }
}
