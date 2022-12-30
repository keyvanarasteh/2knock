// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        // decoration: BoxDecoration(
        //     border: Border(
        //         left: BorderSide(color: Colors.grey.shade100),
        //         right: BorderSide(color: Colors.grey.shade300))),
        width: double.infinity,
        color: Colors.black12,
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            categoryItem(
              icon: Icon(
                Icons.man,
              ),
              name: "Man",
              price: "",
            ),
            categoryItem(
              icon: Icon(Icons.woman_outlined),
              name: "Women",
              price: "",
              active: true,
            ),
            categoryItem(
              icon: Icon(Icons.child_friendly),
              name: "Kids",
              price: "",
            ),
            categoryItem(
              icon: Icon(Icons.add_circle),
              name: "New",
              price: "",
            ),
            categoryItem(
              icon: Icon(Icons.shopping_basket),
              name: "Total",
              price: "",
            ),
          ],
        ));
  }
}

class categoryItem extends StatefulWidget {
  final String name;
  final Icon icon;
  final String price;
  final bool active;
  const categoryItem({
    Key? key,
    required this.name,
    required this.icon,
    required this.price,
    this.active = false,
  }) : super(key: key);

  @override
  State<categoryItem> createState() => _categoryItemState();
}

class _categoryItemState extends State<categoryItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.deepOrange,
      onTap: (() {
        setState(() {});
      }),
      child: Container(
        // decoration: BoxDecoration(
        //     color: active ? Colors.grey.shade200 : Colors.white,
        //     border: Border(bottom: BorderSide(color: Colors.grey.shade300))),
        decoration: BoxDecoration(
            color: Colors.black12,
            border: Border(bottom: BorderSide(color: Colors.black54))),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  child: widget.icon,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(widget.name),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
