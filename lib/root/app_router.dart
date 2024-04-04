import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/root/app_router.gr.dart';

// flutter pub run build_runner build --delete-conflicting-outputs
@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
    // BottomNavigationBar用のルーティングを指定する
        AutoRoute(page: MainScreen.page,
        initial: true,
        // childrenにはTabBarのページを指定する
        children: [
          AutoRoute(page: OneScreen.page),
          AutoRoute(page: SecondScreen.page),
          AutoRoute(page: ThreeScreen.page),
        ],
        )
      ];
}
