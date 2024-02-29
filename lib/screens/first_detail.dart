import 'package:flutter/material.dart';
import 'package:flutter_base_project/router/routes.dart';
import 'package:go_router/go_router.dart';

class FirstDetailScreen extends StatefulWidget {
  const FirstDetailScreen({super.key});

  @override
  State<FirstDetailScreen> createState() => _FirstDetailScreenState();
}

class _FirstDetailScreenState extends State<FirstDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: Center(
          child: ElevatedButton(
        onPressed: () {
          context.go(Routes.home);
        },
        child: const Text("GO BACK TO 1ST"),
      )),
    );
  }
}
