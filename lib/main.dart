import 'package:flutter/material.dart';
import 'package:flutter_base_project/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
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
