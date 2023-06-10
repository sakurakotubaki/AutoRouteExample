# auto_route_example
## AutoRouteとは？
Flutterのナビゲーションパッケージで、強型引数の受け渡し、楽なディープリンクを可能にし、コード生成を使ってルート設定を簡素化します。

## なぜAutoRouteなのか？
もし、あなたのアプリがディープリンクやガードされたルート、または単にクリーンなルーティングセットアップを必要とするならば、名前付き/生成されたルートを使う必要があり、Mediatorの引数クラス、必要な引数のチェック、引数の抽出、その他多くのボイラープレートコードを書くことになります。AutoRouteは、そのようなことをすべて、そしてもっと多くのことをやってくれます。

## パッケージをインストール
```yaml
dependencies:
  flutter:
    sdk: flutter
  auto_route: ^6.3.0

  # The following adds the Cupertino Icons font to your application.
  # Use with the CupertinoIcons class for iOS style icons.
  cupertino_icons: ^1.0.2

dev_dependencies:
  flutter_test:
    sdk: flutter
  auto_route_generator: ^6.2.0
  build_runner: ^2.3.3
```

## セットアップと使用方法
1- ルータークラスを作成し、@AutoRouterConfigでアノテーションし、"$YourClassName "を拡張します 2- routes getterをオーバーライドし、ルートの追加を開始します。

## ルータブルページの生成
ルータブルページは、@RoutePage()でアノテーションされたシンプルな日常的なウィジェットで、ルータによって構築されることが可能です。

**最初のページ**
```dart
import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/root/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()// ここでページを指定
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
```

**次のページ**
```dart
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()// ここでページを指定
class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'UserPage',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          child: const Text('HomePageへ'),
          onPressed: () => context.router.pop(),
        ),
      ),
    );
  }
}
```

**新たに追加したファイル**
```dart
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()// ここでページを指定
class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () => context.router.pop(), child: const Text('Home')),
      ),
    );
  }
}
```

コマンドを実行する
```
flutter packages pub run build_runner watch
```

コマンドを打つとファイルが自動生成される
```dart
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:auto_route_example/ui/home_page.dart' as _i2;
import 'package:auto_route_example/ui/setting.dart' as _i3;
import 'package:auto_route_example/ui/user.dart' as _i1;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    UserRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.UserPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    Settings.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.Settings(),
      );
    },
  };
}

/// generated route for
/// [_i1.UserPage]
class UserRoute extends _i4.PageRouteInfo<void> {
  const UserRoute({List<_i4.PageRouteInfo>? children})
      : super(
          UserRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.Settings]
class Settings extends _i4.PageRouteInfo<void> {
  const Settings({List<_i4.PageRouteInfo>? children})
      : super(
          Settings.name,
          initialChildren: children,
        );

  static const String name = 'Settings';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
```

自動生成されたルートのファイルを読み込む
```dart
import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/root/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),// initial: trueで初期画面を指定
        AutoRoute(page: UserRoute.page),// ここで追加したページを指定
        AutoRoute(page: Settings.page),
      ]; // ;をつけないとエラーになる
}
```