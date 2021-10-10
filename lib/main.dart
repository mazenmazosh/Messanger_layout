import 'package:flutter/material.dart';
import 'package:messenger_layout/card_details.dart';
import 'package:messenger_layout/rounded_icon.dart';

import 'detailed_circle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        home: Scaffold(
          appBar: AppBar(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://t3.ftcdn.net/jpg/03/46/83/96/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg'),
            ),
            title: const Text('Chats'),
            actions: const [
              RoundIconButton(icon: Icons.camera),
              SizedBox(
                width: 10,
              ),
              RoundIconButton(icon: Icons.edit)
            ],
          ),
          body: Column(
            children: [
              Container(
                height: 78,
                child: Card(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return const DetailedCircle(
                          text: 'mazen',
                          image:
                              'https://t3.ftcdn.net/jpg/03/46/83/96/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg');
                    },
                    itemCount: 16,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 15,
                      itemBuilder: (context, index) {
                        return const CardDetails(
                            text1: 'Mazen Mostafa', text2: 'New Message');
                      }),
                ),
              ),
            ],
          ),
        ));
  }
}