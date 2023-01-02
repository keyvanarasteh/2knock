// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ChatInfo extends StatefulWidget {
  const ChatInfo({super.key});

  @override
  State<ChatInfo> createState() => _ChatInfoState();
}

class _ChatInfoState extends State<ChatInfo> {
  @override
  late Future<dynamic> profile;

  Future<dynamic> downloadProfile() async {
    var response = await Dio().get('https://reqres.in/api/users/2');

    return response.data;
  }

  @override
  void initState() {
    super.initState();
    profile = downloadProfile();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: profile,
      builder: ((context, snapshot) {
        switch (snapshot.connectionState) {
          case (ConnectionState.active):
            return Text("Active");
          case (ConnectionState.waiting):
            return Center(
              child: CircularProgressIndicator(),
            );
          case (ConnectionState.done):
            if (snapshot.hasError) {
              return Text("Hata Oluştu");
            }
            return Container(
                decoration: BoxDecoration(
                    border: Border(
                        left: BorderSide(color: Colors.grey.shade800),
                        right: BorderSide(color: Colors.grey.shade800))),
                width: double.infinity,
                child: ListView(
                  children: [
                    profileItem(
                      avatar: '${snapshot.data["data"]["avatar"]}',
                      name: "${snapshot.data["data"]["first_name"]}",
                    ),
                    categoryItem(
                        name: "Email",
                        icon: Icon(Icons.email_outlined),
                        price: '${snapshot.data["data"]["email"]}'),
                    categoryItem(
                        name: "Phone",
                        icon: Icon(Icons.phone_iphone_outlined),
                        price: '+90 (537) 886 42 32'),
                    categoryItem(
                        name: "Balance",
                        icon: Icon(Icons.account_balance_wallet_outlined),
                        price: '540\$'),
                  ],
                ));
          default:
            return Text("Hata");
        }
      }),
    ));
  }
}

class profileItem extends StatelessWidget {
  final String name;
  final String avatar;
  const profileItem({
    Key? key,
    required this.name,
    required this.avatar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade800))),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                    radius: 48, backgroundImage: NetworkImage(avatar)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(name),
            ],
          ),
          Text(
            'Ayakkabı Kurdu',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}

class categoryItem extends StatelessWidget {
  final String name;
  final Icon icon;
  final String price;
  const categoryItem({
    Key? key,
    required this.name,
    required this.icon,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade800))),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                child: icon,
              ),
              SizedBox(
                width: 10,
              ),
              Text(name),
            ],
          ),
          Text(
            price,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
