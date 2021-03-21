import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:network_checker/pages/splash.dart';
import 'package:network_checker/providers/dataconnectionchecker.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider<ConnectivityResult>(
          create: (_) => MyDataConnectionChecker().myconnectionStatus,
        ),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: SplashScreen()),
    );
  }
}
