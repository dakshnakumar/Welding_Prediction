import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:well_right/screens/graphImages/defectVsEmploye.dart';
import 'package:well_right/screens/graphImages/machineVsDefect.dart';
import 'package:well_right/screens/graphImages/noDef_flow.dart';
import 'package:well_right/screens/noDefVolt.dart';
import 'package:well_right/screens/noDef_vs_curr.dart';
import 'package:well_right/screens/nodefVsjobTem.dart';
import 'package:well_right/screens/noDef_Humi.dart';

import 'package:well_right/screens/nodef_temp.dart';

class GridGraphImage extends StatelessWidget {
  const GridGraphImage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 20,
      crossAxisCount: 4,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          child: Stack(fit: StackFit.expand, children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        offset: Offset(2.0, 2.0),
                        blurRadius: 5.0,
                        spreadRadius: 1.0)
                  ]),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              child: Image.asset(
                "assets/images/thumbnail/emp_vs_defe.jpeg",
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Defect_Employee()),
                );
              },
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Stack(fit: StackFit.expand, children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        offset: Offset(2.0, 2.0),
                        blurRadius: 5.0,
                        spreadRadius: 1.0)
                  ]),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              child: Image.asset(
                "assets/images/thumbnail/mach_vs_defe_thum.jpeg",
                // width: 200,
                // height: 200,
                fit: BoxFit.cover,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Machine_Defect()),
                );
              },
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          child: Stack(fit: StackFit.expand, children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        offset: Offset(2.0, 2.0),
                        blurRadius: 5.0,
                        spreadRadius: 1.0)
                  ]),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              child: Image.asset(
                "assets/images/thumbnail/no_def_vs_currnt.jpeg",
                // width: 90,
                // height: 90,
                fit: BoxFit.cover,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => NoDef_Curr()),
                );
              },
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Stack(fit: StackFit.expand, children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        offset: Offset(2.0, 2.0),
                        blurRadius: 5.0,
                        spreadRadius: 1.0)
                  ]),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              child: Image.asset(
                "assets/images/thumbnail/no_def_vs_job_temp.jpeg",
                // width: 200,
                // height: 200,
                fit: BoxFit.cover,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => NoDef_JobTem()),
                );
              },
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Stack(fit: StackFit.expand, children: <Widget>[
            Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        offset: Offset(2.0, 2.0),
                        blurRadius: 5.0,
                        spreadRadius: 1.0)
                  ]),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              child: Image.asset(
                "assets/images/thumbnail/no_def_vs_temp.jpeg",
                // width: 200,
                // height: 200,
                fit: BoxFit.cover,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => NoDef_Temp()),
                );
              },
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Stack(fit: StackFit.expand, children: <Widget>[
            Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        offset: Offset(2.0, 2.0),
                        blurRadius: 5.0,
                        spreadRadius: 1.0)
                  ]),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              child: Image.asset(
                "assets/images/thumbnail/no_defe_Vs_flow_thumb.jpeg",
                // width: 200,
                // height: 200,
                fit: BoxFit.cover,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => NoDef_Flow()),
                );
              },
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Stack(fit: StackFit.expand, children: <Widget>[
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              child: Image.asset(
                "assets/images/thumbnail/no_def_vs_voltage.jpeg",
                // width: 150,
                // height: 150,
                fit: BoxFit.cover,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => NoDef_Volt()),
                );
              },
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Stack(fit: StackFit.expand, children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        offset: Offset(2.0, 2.0),
                        blurRadius: 5.0,
                        spreadRadius: 1.0)
                  ]),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              child: Image.asset(
                "assets/images/thumbnail/no_defe_VS_humid_thumb.jpeg",
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => NoDef_Humi()),
                );
              },
            )
          ]),
        ),
      ],
    );
  }
}
