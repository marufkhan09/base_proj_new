import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  final Widget child;

  MyScaffold({required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Title'),
      ),
      body: child,
    );
  }
}
