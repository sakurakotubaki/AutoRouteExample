// import 'package:auto_route/auto_route.dart';
// import 'package:auto_route_example/root/app_router.gr.dart';
// import 'package:flutter/material.dart';

// @RoutePage() // ここでページを指定
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'HomePage',
//         ),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ElevatedButton(
//                   child: const Text('UserPageへ'),
//                   onPressed: () => context.router
//                       .push(const UserRoute())), // Routeと書いてあるコードを読み込む
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ElevatedButton(
//                 child: const Text('SettingsPageへ'),
//                 onPressed: () =>
//                     context.router.push(const SettingRoute()), // こちらも同じように読み込む
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
