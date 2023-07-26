import 'package:flutter/material.dart';
import 'package:well_right/screens/MenuBar/MenuBa.dart';
import 'package:well_right/screens/constants.dart';
import 'package:well_right/screens/action_button.dart';
import 'package:well_right/screens/signup.dart';

class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController _current = TextEditingController();
    TextEditingController _humidity = TextEditingController();
    TextEditingController _temperature = TextEditingController();
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/welding.jpg"),
                fit: BoxFit.cover)),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(size.height > 770
                  ? 64
                  : size.height > 670
                      ? 32
                      : 16),
              child: Center(
                child: Card(
                  elevation: 4,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(14),
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
                          padding: const EdgeInsets.all(60),
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
                                "Welding prediction",
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
                              TextField(
                                controller: _current,
                                decoration: const InputDecoration(
                                  hintText: 'Current',
                                  labelText: 'Current',
                                  suffixIcon: Icon(
                                    Icons.mail_outline,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 32,
                              ),
                              TextField(
                                controller: _humidity,
                                decoration: const InputDecoration(
                                  hintText: 'Humidity',
                                  labelText: 'Humidity',
                                  suffixIcon: Icon(
                                    Icons.lock_outline,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 32,
                              ),
                              TextField(
                                controller: _temperature,
                                decoration: const InputDecoration(
                                  hintText: 'Temperature',
                                  labelText: 'Temperature',
                                  suffixIcon: Icon(
                                    Icons.lock_outline,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 64,
                              ),
                              GestureDetector(
                                onTap: () {
                                  // widget.onSignUpSelected();
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) => SignUp(
                                            current: _current.text,
                                            humidity: _humidity.text,
                                            temperature: _temperature.text)),
                                  );
                                },
                                child: actionButton("Next"),
                              ),
                              // actionButton("Next"),

                              const SizedBox(
                                height: 32,
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
          ],
        ),
      ),
    );
  }
}
