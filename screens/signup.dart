import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:well_right/screens/constants.dart';
import 'package:well_right/screens/action_button.dart';
import 'package:well_right/screens/login.dart';
import 'package:well_right/screens/prediction.dart';

class SignUp extends StatefulWidget {
  String current, humidity, temperature;

  SignUp(
      {Key? key,
      required this.current,
      required this.humidity,
      required this.temperature})
      : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Future Prediction(var body) async {
    var string = "Please enter vaild input";
    var uri = Uri.parse("http://127.0.0.1:5000/get_predicted_output");
    Map<String, String> headers = {'Content-Type': 'application/json'};
    String jsonString = json.encode(body);
    print(jsonString);
    try {
      print("entered try block>>>>>");
      var resp = await http.post(uri, headers: headers, body: jsonString);
      print(resp.statusCode);
      // var resp = await http.post(Uri.parse("http://127.0.0.1:5000"),
      // headers: headers, body: jsonString);
      if (resp.statusCode == 200) {
        print("DATA FETCHED SUCCESSFULLY");
        print(resp.body);
        var result = json.decode(resp.body);
        // print(result);
        // print(resp);
        return result['output'];
      }
    } catch (e) {
      print("EXCEPTION OCCURRED: $e");
    }
    return string;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController _flow = TextEditingController();
    TextEditingController _job_temp = TextEditingController();
    TextEditingController _voltage = TextEditingController();

    return Container(
      width: size.width,
      height: size.height,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/welding.jpg"),
              fit: BoxFit.cover)),
      child: Padding(
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
                        // const SizedBox(
                        //   height: 8,
                        // ),
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
                        TextField(
                          controller: _flow,
                          decoration: const InputDecoration(
                            hintText: 'Flow',
                            labelText: 'Flow',
                            suffixIcon: Icon(
                              Icons.lock_outline,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        TextField(
                          controller: _job_temp,
                          decoration: const InputDecoration(
                            hintText: 'Job Temp',
                            labelText: 'Job Temp',
                            suffixIcon: Icon(
                              Icons.lock_outline,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        TextField(
                          controller: _voltage,
                          decoration: const InputDecoration(
                            hintText: 'Voltage',
                            labelText: 'Voltage',
                            suffixIcon: Icon(
                              Icons.lock_outline,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 64,
                        ),
                        GestureDetector(
                            onTap: () async {
                              var body = [
                                {
                                  "current": widget.current,
                                  "humidity": widget.humidity,
                                  "temperature": widget.temperature,
                                  "job_temp": _job_temp.text,
                                  "flow": _flow.text,
                                  "voltage": _voltage.text
                                }
                              ];
                              // print(body);
                              var resp = await Prediction(body);
                              print(resp);
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      prediction(predict: resp)));
                            },
                            child: actionButton("Predict")),
                        const SizedBox(
                          height: 32,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Made mistake?",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop(MaterialPageRoute(
                                  builder: (context) => LogIn(),
                                ));
                                // print(body);
                                // widget.onLogInSelected();
                              },
                              child: Row(
                                children: [
                                  Text(
                                    "Go Back",
                                    style: TextStyle(
                                      color: kPrimaryColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: kPrimaryColor,
                                  ),
                                ],
                              ),
                            ),
                          ],
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
    );
  }
}
