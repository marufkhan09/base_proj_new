import 'package:flutter/material.dart';
import 'package:flutter_base_project/router/routes.dart';
import 'package:go_router/go_router.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Center(
          child: ElevatedButton(
        onPressed: () {
          context.go(Routes.home);
        },
        child: Text("Back"),
      )),
    );
  }
}
