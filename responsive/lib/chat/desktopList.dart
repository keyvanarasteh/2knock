import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive/chat/dekstop.dart';
import 'package:responsive/class/model.dart';

class DesktopList extends StatefulWidget {
  const DesktopList({super.key});

  @override
  State<DesktopList> createState() => _DesktopListState();
}

class _DesktopListState extends State<DesktopList> {
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
              return Desktop(list: ListModel.items[index]);
            }),
          ),
        ));
  }
}
