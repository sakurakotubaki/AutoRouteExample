import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/root/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// [AutoTabsRouter]をビルドし、次のように使用する。
    /// ページをレンダリングするための[IndexedStack]を構築する。
    return AutoTabsRouter(
      routes: const [
        OneScreen(),
        SecondScreen(),
        ThreeScreen(),
      ],
      transitionBuilder: (context, child, animation) {
        // 不透明度の遷移を作成します。
        return FadeTransition(opacity: animation, child: child);
      },
      builder: (context, child) {
        // 並列ルーティングを処理するルーター・ウィジェットの実装
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (value) {
              tabsRouter.setActiveIndex(value);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.feed),
                label: 'feed',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
          ),
        );
      },
    );
  }
}