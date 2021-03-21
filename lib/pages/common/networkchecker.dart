// import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:network_checker/pages/common/no_internet_page.dart';
import 'package:provider/provider.dart';

class NetworkChecker extends StatelessWidget {
  final Widget child;

  const NetworkChecker({Key key, @required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var connectionStatus = Provider.of<ConnectivityResult>(context);

    return connectionStatus == ConnectivityResult.none
        ? NoInternetConnectionPage()
        : child;
  }
}
