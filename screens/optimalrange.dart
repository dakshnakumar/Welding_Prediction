import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OptimalRange extends StatelessWidget {
  const OptimalRange({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
            width: size.width,
            height: size.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/welding.jpg"),
                    fit: BoxFit.cover)),
            child: Stack(children: [
              Center(
                child: Container(
                  child: Image.asset("assets/images/optimalRange.jpeg"),
                ),
              )
            ])));
  }
}
