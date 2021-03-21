import 'package:flutter/material.dart';
import 'package:network_checker/pages/common/networkchecker.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NetworkChecker(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text("Main page"),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "This is showing because you have internet connection",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
