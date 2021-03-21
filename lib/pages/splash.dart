import 'package:flutter/material.dart';
import 'package:network_checker/pages/common/networkchecker.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NetworkChecker(
        child: Stack(
          children: [
            Container(
                decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/duck.jpg'),
                  fit: BoxFit.fitWidth),
            )),
            Container(
              color: Colors.green.withOpacity(0.9),
            ),
            Container(
              child: Center(child: CircularProgressIndicator()),
            ),
            Container(
              // margin: EdgeInsets.only(bottom: 30),
              child: Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivery",
                        style: TextStyle(
                            fontSize: 70.0,
                            fontFamily: 'bold',
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(255, 255, 255, 1)),
                      ),
                      Text(
                        "Club",
                        style: TextStyle(
                            fontSize: 70.0,
                            fontFamily: 'bold',
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(255, 255, 255, 1)),
                      ),
                      Text(
                        "mail.ru group | CBEP ",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'bold',
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(255, 255, 255, 1)),
                      )
                    ],
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
