import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTab extends StatelessWidget {
  const CustomTab({required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(this.title,
          style: GoogleFonts.oswald(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
    );
  }
}
