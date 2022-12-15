import 'package:flutter/material.dart';

class cardList extends StatelessWidget {
  const cardList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
        Positioned(
            top: 10,
            left: 20,
            child: Row(
              children: [
                Text("Intermediate ",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: Colors.grey)),
                Text(
                  " | 10 hours ",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.grey),
                ),
              ],
            )),
        Positioned(
            left: 20,
            top: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 250,
                  child: Text("The Bits of Computer Networking",
                      maxLines: 2,
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(color: Colors.white)),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.orange,
                    ),
                    Icon(
                      size: 20,
                      Icons.star,
                      color: Colors.orange,
                    ),
                    Icon(
                      size: 20,
                      Icons.star_half_outlined,
                      color: Colors.orange,
                    ),
                  ],
                ),
              ],
            )),
        Positioned(
          right: 0,
          bottom: -60,
          child: SizedBox(height: 100, child: Image.asset('images/shape1.png')),
        )
      ],
    );
  }
}
