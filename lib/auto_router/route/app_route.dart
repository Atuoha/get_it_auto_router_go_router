import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'app_route.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: Controlscreen.page),
        AutoRoute(path: '/screen1', page: Screen1.page),
        AutoRoute(path: '/screen2', page: Screen2.page),
        AutoRoute(path: '/screen3', page: Screen3.page),
      ];
}
