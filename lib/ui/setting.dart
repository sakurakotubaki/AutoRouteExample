import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()// ここでページを指定
class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SettingsPage'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () => context.router.pop(), child: const Text('Home')),
      ),
    );
  }
}