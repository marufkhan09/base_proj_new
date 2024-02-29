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
          context.goNamed(Routes.firstDetail);
          // After navigating to detail screen
          Future.delayed(Duration(milliseconds: 100), () {
            final canPop = Navigator.of(context).canPop();
            print('Can Pop: $canPop');
          });

          // showAnimatedSnackBar(context: context, message: "SHOW MESSAGE");
        },
        child: const Text("1ST DETAIL"),
      )),
    );
  }
}
