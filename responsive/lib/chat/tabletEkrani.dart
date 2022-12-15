// ignore_for_file: prefer_const_constructors

import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive/chat/tablet.dart';
import 'package:responsive/class/model.dart';

class Conversation extends StatelessWidget {
  const Conversation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        // decoration: BoxDecoration(
        //     border: Border(right: BorderSide(color: Colors.grey.shade300))),
        child: Expanded(
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: ListModel.items.length,
            itemBuilder: ((context, index) {
              return Tablet(list: ListModel.items[index]);
            }),
          ),
        ));
  }
}
