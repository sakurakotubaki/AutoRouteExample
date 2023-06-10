import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/root/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),// initial: trueで初期画面を指定
        AutoRoute(page: UserRoute.page),// ここで追加したページを指定
      ]; // ;をつけないとエラーになる
}
