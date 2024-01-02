// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:get_it_auto_router_go_router/auto_router/control_screen.dart'
    as _i1;
import 'package:get_it_auto_router_go_router/auto_router/screens/screen1.dart'
    as _i2;
import 'package:get_it_auto_router_go_router/auto_router/screens/screen2.dart'
    as _i3;
import 'package:get_it_auto_router_go_router/auto_router/screens/screen3.dart'
    as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    Controlscreen.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ControlScreen(),
      );
    },
    Screen1.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.Screen1(),
      );
    },
    Screen2.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.Screen2(),
      );
    },
    Screen3.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.Screen3(),
      );
    },
  };
}

/// generated route for
/// [_i1.ControlScreen]
class Controlscreen extends _i5.PageRouteInfo<void> {
  const Controlscreen({List<_i5.PageRouteInfo>? children})
      : super(
          Controlscreen.name,
          initialChildren: children,
        );

  static const String name = 'Controlscreen';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.Screen1]
class Screen1 extends _i5.PageRouteInfo<void> {
  const Screen1({List<_i5.PageRouteInfo>? children})
      : super(
          Screen1.name,
          initialChildren: children,
        );

  static const String name = 'Screen1';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.Screen2]
class Screen2 extends _i5.PageRouteInfo<void> {
  const Screen2({List<_i5.PageRouteInfo>? children})
      : super(
          Screen2.name,
          initialChildren: children,
        );

  static const String name = 'Screen2';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.Screen3]
class Screen3 extends _i5.PageRouteInfo<void> {
  const Screen3({List<_i5.PageRouteInfo>? children})
      : super(
          Screen3.name,
          initialChildren: children,
        );

  static const String name = 'Screen3';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
