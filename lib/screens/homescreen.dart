import 'package:flutter/material.dart';
import 'package:flutter_base_project/router/routes.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Center(
          child: ElevatedButton(
        onPressed: () {
          context.go(Routes.settings);
        },
        child: Text("GO"),
      )),
    );
  }
}


