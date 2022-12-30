import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

enum Device {
  mobile,
  tablet,
  desktop,
}

class Slivers extends StatefulWidget {
  const Slivers({super.key});

  @override
  State<Slivers> createState() => _SliversState();
}

class _SliversState extends State<Slivers> {
  Device detectDevice(width) {
    if (width <= 480) {
      return Device.mobile;
    } else if (width <= 768) {
      return Device.tablet;
    } else {
      return Device.desktop;
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.red,
            expandedHeight: 200,
            title: Text("Deneme"),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "images/shoes.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
