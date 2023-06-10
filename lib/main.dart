import 'package:auto_route_example/root/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter(); // auto_routeのrouterを追加

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router( // MaterialApp.routerに変更
      routerConfig: _appRouter.config(), // auto_routeのrouterを追加
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
