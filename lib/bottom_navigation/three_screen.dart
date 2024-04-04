import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ThreeScreen extends StatelessWidget {
  const ThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('ThreeScreen', style: TextStyle(fontSize: 30, color: Colors.green))),
    );
  }
}