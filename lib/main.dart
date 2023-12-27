import 'package:flutter/material.dart';
import 'package:flutter_base_project/router/router.dart';
import 'package:flutter_base_project/services/connectivity_checker.dart';
import 'package:flutter_base_project/utils/keys.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
// Now, you can initialize the ConnectivityService
  final ConnectivityService connectivityService =
      ConnectivityService(GlobalVariableKeys.scaffoldMessengerState);
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      scaffoldMessengerKey: GlobalVariableKeys.scaffoldMessengerState,
      title: 'Cupertino App with GoRouter',
      routerConfig: goRouter,
      theme: ThemeData.light().copyWith(
        // Light mode theme configurations
        primaryColor: Colors.blue,
        hintColor: Colors.orangeAccent,
        // Other light mode properties
      ),
      darkTheme: ThemeData.dark().copyWith(
        // Dark mode theme configurations
        primaryColor: Colors.teal,
        hintColor: Colors.amberAccent,
        // Other dark mode properties
      ),
      themeMode: ThemeMode.system,
    );
  }
}
