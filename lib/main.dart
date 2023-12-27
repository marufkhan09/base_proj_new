import 'package:flutter/material.dart';
import 'package:flutter_base_project/router/router.dart';
import 'package:flutter_base_project/services/connectivity_checker.dart';
import 'package:flutter_base_project/utils/keys.dart';
import 'package:flutter_base_project/utils/theme.dart';
import 'package:provider/provider.dart';

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
      title: 'Theme Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: goRouter, // Use system settings for light/dark mode
    );
  }
}
