import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:well_right/action.dart';
import 'package:well_right/screens/constants.dart';
import 'package:well_right/screens/login.dart';
import 'package:well_right/screens/optimalrange.dart';

class prediction extends StatelessWidget {
  String predict;
  prediction({super.key, required this.predict});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        height: size.height,
        child: Stack(children: [
          Container(
            width: size.width,
            height: size.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/welding.jpg"),
                    fit: BoxFit.cover)),
          ),
          Container(
            child: Center(
              child: Card(
                elevation: 4,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: Container(
                  height: size.height *
                      (size.height > 770
                          ? 0.7
                          : size.height > 670
                              ? 0.8
                              : 0.9),
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Center(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.all(40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Container(
                            //   height: 50,
                            //   width: 100,
                            //   child: Image.asset(
                            //       "assets/images/godrej_logo-removebg-preview.png"),
                            // ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Welding Prediction",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey[700],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            // Text(
                            //   "Team ID: HA-228532",
                            //   style: TextStyle(
                            //     fontSize: 18,
                            //     color: Colors.grey[700],
                            //   ),
                            // ),
                            Container(
                              width: 30,
                              child: Divider(
                                color: kPrimaryColor,
                                thickness: 2,
                              ),
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            Text(
                              "The Predicted Output ",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey[700],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              predict.toString(),
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[700],
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const OptimalRange()),
                                  );
                                },
                                child: const Text(
                                    "To Get optimal range Click here....")),
                            const SizedBox(
                              height: 50,
                            ),
                            GestureDetector(
                              onTap: () {
                                // widget.onSignUpSelected();
                                Navigator.of(context).pop(
                                  MaterialPageRoute(
                                      builder: (context) => LogIn()),
                                );
                              },
                              child: actionButton("Go Back"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]));
  }
}
