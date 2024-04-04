// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:auto_route_example/bottom_navigation/main_screen.dart' as _i1;
import 'package:auto_route_example/bottom_navigation/one_screen.dart' as _i2;
import 'package:auto_route_example/bottom_navigation/second_screen.dart' as _i3;
import 'package:auto_route_example/bottom_navigation/three_screen.dart' as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    MainScreen.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.MainScreen(),
      );
    },
    OneScreen.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.OneScreen(),
      );
    },
    SecondScreen.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SecondScreen(),
      );
    },
    ThreeScreen.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ThreeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.MainScreen]
class MainScreen extends _i5.PageRouteInfo<void> {
  const MainScreen({List<_i5.PageRouteInfo>? children})
      : super(
          MainScreen.name,
          initialChildren: children,
        );

  static const String name = 'MainScreen';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.OneScreen]
class OneScreen extends _i5.PageRouteInfo<void> {
  const OneScreen({List<_i5.PageRouteInfo>? children})
      : super(
          OneScreen.name,
          initialChildren: children,
        );

  static const String name = 'OneScreen';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SecondScreen]
class SecondScreen extends _i5.PageRouteInfo<void> {
  const SecondScreen({List<_i5.PageRouteInfo>? children})
      : super(
          SecondScreen.name,
          initialChildren: children,
        );

  static const String name = 'SecondScreen';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ThreeScreen]
class ThreeScreen extends _i5.PageRouteInfo<void> {
  const ThreeScreen({List<_i5.PageRouteInfo>? children})
      : super(
          ThreeScreen.name,
          initialChildren: children,
        );

  static const String name = 'ThreeScreen';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
