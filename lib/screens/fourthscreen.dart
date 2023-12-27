import 'package:flutter/material.dart';
import 'package:flutter_base_project/router/routes.dart';
import 'package:go_router/go_router.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({super.key});

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Center(
          child: ElevatedButton(
        onPressed: () {
          context.go(Routes.settings);
        },
        child:const Text("4TH DETAIL"),
      )),
    );
  }
}
