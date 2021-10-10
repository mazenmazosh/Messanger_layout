import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({@required this.text1, @required this.text2});
  final String? text1;
  final String? text2;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const CircleAvatar(
          child: Image(
              image: NetworkImage(
                  'https://t3.ftcdn.net/jpg/03/46/83/96/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg')),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text1!,
              style: const TextStyle(fontSize: 20),
            ),
            Text(text2!)
          ],
        ),
      ),
    );
  }
}