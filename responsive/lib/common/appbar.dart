import 'dart:html';

import 'package:flutter/material.dart';

class AppBar1 extends StatefulWidget {
  final Function()? onCategoryClick;
  final Function()? onInfoClick;

  const AppBar1({super.key, this.onCategoryClick, this.onInfoClick});

  @override
  State<AppBar1> createState() => _AppBar1State();
}

class _AppBar1State extends State<AppBar1> {
  checkDevice(double width) {
    if (width <= 576) {
      return "mobile";
    } else if (width <= 768) {
      return "tablet";
    } else if (width <= 2048) {
      return "desktop";
    } else {
      return "large";
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    String input = "Search";

    var deviceType = checkDevice(width);
    if (deviceType == "mobile") {
      return SafeArea(
        child: Container(
            height: 80,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: widget.onCategoryClick,
                    child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 20,
                        child: Image.asset("images/logo.png")),
                  ),
                  Container(
                    width: width * 0.45,
                    child: TextField(
                      style: TextStyle(color: Colors.white70),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(2),
                          hintText: input,
                          hintStyle:
                              TextStyle(color: Colors.white, fontSize: 14),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none),
                          fillColor: Colors.grey.shade400,
                          filled: true,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              child: Icon(
                                Icons.search_outlined,
                                color: Colors.white,
                              ),
                            ),
                          )),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext) {
                            return AlertDialog(
                              title: new Text("Alert!"),content: Text("Empty Basket"), actions: [TextButton(onPressed: () {
                                Navigator.of(context).pop();
                              }, child: Text("OK"))],
                            );
                          },
                        );
                      },
                      child: Icon(Icons.shopping_basket_outlined)),
                ],
              ),
            )),
      );
    } else if (deviceType == "tablet") {
      return SafeArea(
        child: Container(
            height: 80,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: widget.onCategoryClick,
                    child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 20,
                        child: Image.asset("images/logo.png")),
                  ),
                  Container(
                      width: width * 0.4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {});
                              },
                              child: Text("Men")),
                          InkWell(
                              onTap: () {
                                setState(() {});
                              },
                              child: Text("Women")),
                          InkWell(
                              onTap: () {
                                setState(() {});
                              },
                              child: Text("Kids")),
                          InkWell(
                              onTap: () {
                                setState(() {});
                              },
                              child: Text("New")),
                          InkWell(
                              onTap: () {
                                setState(() {});
                              },
                              child: Text("Total")),
                        ],
                      )),
                  Container(
                    width: width * 0.2,
                    child: TextField(
                      style: TextStyle(color: Colors.white70),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(2),
                          hintText: input,
                          hintStyle:
                              TextStyle(color: Colors.white, fontSize: 14),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none),
                          fillColor: Colors.grey.shade400,
                          filled: true,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              child: Icon(
                                Icons.search_outlined,
                                color: Colors.white,
                              ),
                            ),
                          )),
                    ),
                  ),
                 InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext) {
                            return AlertDialog(
                              title: new Text("Alert!"),content: Text("Empty Basket"), actions: [TextButton(onPressed: () {
                                Navigator.of(context).pop();
                              }, child: Text("OK"))],
                            );
                          },
                        );
                      },
                      child: Icon(Icons.shopping_basket_outlined)),
                ],
              ),
            )),
      );
    } else if (deviceType == "desktop") {
      return SafeArea(
        child: Container(
            height: 80,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 20,
                      child: Image.asset("images/logo.png")),
                  Container(
                      width: width * 0.4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {});
                              },
                              child: Text("Men")),
                          InkWell(
                              onTap: () {
                                setState(() {});
                              },
                              child: Text("Women")),
                          InkWell(
                              onTap: () {
                                setState(() {});
                              },
                              child: Text("Kids")),
                          InkWell(
                              onTap: () {
                                setState(() {});
                              },
                              child: Text("New")),
                          InkWell(
                              onTap: () {
                                setState(() {});
                              },
                              child: Text("Total")),
                        ],
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: width * 0.15,
                    child: TextField(
                      style: TextStyle(color: Colors.white70),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(2),
                          hintText: input,
                          hintStyle:
                              TextStyle(color: Colors.white, fontSize: 14),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none),
                          fillColor: Colors.grey.shade400,
                          filled: true,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              child: Icon(
                                Icons.search_outlined,
                                color: Colors.white,
                              ),
                            ),
                          )),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext) {
                            return AlertDialog(
                              title: new Text("Alert!"),content: Text("Empty Basket"), actions: [TextButton(onPressed: () {
                                Navigator.of(context).pop();
                              }, child: Text("OK"))],
                            );
                          },
                        );
                      },
                      child: Icon(Icons.shopping_basket_outlined)),
                ],
              ),
            )),
      );
    } 
    else {
      return SafeArea(
        child: Container(
            height: 80,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: widget.onCategoryClick,
                    child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 20,
                        child: Image.asset("images/logo.png")),
                  ),
                  Container(
                    width: width * 0.45,
                    child: TextField(
                      style: TextStyle(color: Colors.white70),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(2),
                          hintText: input,
                          hintStyle:
                              TextStyle(color: Colors.white, fontSize: 14),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none),
                          fillColor: Colors.grey.shade400,
                          filled: true,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              child: Icon(
                                Icons.search_outlined,
                                color: Colors.white,
                              ),
                            ),
                          )),
                    ),
                  ),
                  Icon(Icons.shopping_basket_outlined),
                ],
              ),
            )),
      );
    }
  }
}
