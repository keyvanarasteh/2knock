import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class bottomNavigation extends StatefulWidget {
  const bottomNavigation({
    Key? key,
    required this.color_Theme,
  }) : super(key: key);

  final Color color_Theme;

  @override
  State<bottomNavigation> createState() => _bottomNavigationState();
}

class _bottomNavigationState extends State<bottomNavigation> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
    var width = MediaQuery.of(context).size.width;
    int _page = 0;
    double bottomUzunluk = 576;

    return width <= bottomUzunluk
        ? CurvedNavigationBar(
            color: Colors.grey.shade800,
            backgroundColor: Colors.transparent,
            animationDuration: Duration(milliseconds: 400),
            buttonBackgroundColor: Colors.white12,
            items: [
              Icon(
                Icons.home,
                color: Color.fromARGB(192, 151, 196, 28),
              ),
              Icon(
                Icons.add,
                color: Color.fromARGB(192, 151, 196, 28),
              ),
            ],
            onTap: (index) {
              setState(() {
                _page = index;
              });
            },
          )
        : SizedBox();
  }
}

void setState(Null Function() param0) {}
