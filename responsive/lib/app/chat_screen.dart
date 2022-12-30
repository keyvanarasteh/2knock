// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:responsive/class/model.dart';
import 'package:responsive/widget/screen_list.dart';

class ChatScreen extends StatefulWidget {
  // final Shoes shoes;
  // ChatScreen(this.shoes);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen>
    with SingleTickerProviderStateMixin {
  @override
  late final TabController _tabController;

  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        // decoration: BoxDecoration(
        //     border: Border(right: BorderSide(color: Colors.grey.shade300))),
        width: double.infinity,
        child: Expanded(
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: ListModel.items.length,
            itemBuilder: ((context, index) {
              return ScreenList(list: ListModel.items[index]);
            }),
          ),
        ));
  }
}
