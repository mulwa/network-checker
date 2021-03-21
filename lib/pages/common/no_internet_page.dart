import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoInternetConnectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(30.0),
        child: Text(
          "Please Check your Network connection Settings!",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
