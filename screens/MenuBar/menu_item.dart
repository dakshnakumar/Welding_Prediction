import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final Function press;

  const MenuItem({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          "Prediction".toUpperCase(),
          style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
