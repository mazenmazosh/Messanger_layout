import 'package:flutter/material.dart';

class DetailedCircle extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const DetailedCircle({@required this.text, @required this.image});
  final String? text;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(image!),
          ),
          Text(
            text!,
            style: const TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}