// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Login Screen"),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoContextMenu(
              actions: [
                CupertinoContextMenuAction(
                    onPressed: (() {
                      Navigator.of(context).pushReplacementNamed('/homeScreen');
                    }),
                    child: Text('Login'),
                    trailingIcon: CupertinoIcons.device_phone_portrait),
                CupertinoContextMenuAction(
                  onPressed: (() {
                    Navigator.of(context).pop();
                  }),
                  isDestructiveAction: true,
                  child: Text('Log out '),
                  trailingIcon: CupertinoIcons.delete,
                ),
              ],
              child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(13)),
                  child: Center(
                    child: Icon(
                      CupertinoIcons.person,
                    ),
                  )),
              previewBuilder: (context, animation, child) {
                return Container(
                  width: 100,
                  height: 100,
                  color: Colors.transparent.withOpacity(0.4),
                  child: Icon(CupertinoIcons.person),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
