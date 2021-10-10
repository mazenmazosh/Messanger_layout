import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const RoundIconButton({
    @required this.icon,
  });
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: Icon(icon),
      backgroundColor: Colors.grey,
    );
  }
}
