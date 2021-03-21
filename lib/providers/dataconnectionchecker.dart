import 'dart:async';
import 'package:connectivity/connectivity.dart';

class MyDataConnectionChecker {
  StreamController<ConnectivityResult> _connectionStreamController =
      StreamController<ConnectivityResult>();
  Stream<ConnectivityResult> get myconnectionStatus =>
      _connectionStreamController.stream;
  MyDataConnectionChecker() {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      _connectionStreamController.add(result);
      print(result);
    });
  }
}
