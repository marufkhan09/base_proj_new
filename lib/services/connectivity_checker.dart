import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class ConnectivityService {
  late InternetConnectionChecker _connectionChecker;
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey;
  bool _hasCheckedConnectivity = false;

  ConnectivityService(this.scaffoldMessengerKey) {
    _connectionChecker = InternetConnectionChecker();
    _initConnectionChecker();
  }

  void _initConnectionChecker() {
    _connectionChecker.onStatusChange.listen((status) {
      if (_hasCheckedConnectivity) {
        _showConnectivitySnackbar(status);
      } else {
        _hasCheckedConnectivity = true;
      }
    });
  }

  void _showConnectivitySnackbar(InternetConnectionStatus status) {
    final snackBar = SnackBar(
      content: Text(
        status == InternetConnectionStatus.disconnected
            ? 'No Internet Connection'
            : 'Connected to the Internet',
      ),
    );
    scaffoldMessengerKey.currentState?.showSnackBar(snackBar);
  }
}
