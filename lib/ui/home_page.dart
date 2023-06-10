import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/root/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'HomePage',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          child: const Text('UserPageへ'),
          onPressed: () => context.router.push(const UserRoute())),
        ),
    );
  }
}