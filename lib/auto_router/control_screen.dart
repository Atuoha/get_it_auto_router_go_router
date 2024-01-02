import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it_auto_router_go_router/go_router/config/route_config.dart';

enum Screen {
  screen1,
  screen2,
  screen3,
}

@RoutePage(name: 'controlscreen')
class ControlScreen extends StatelessWidget {
  const ControlScreen({super.key});

  void navigateToScreen({
    required BuildContext context,
    required Screen screen,
  }) {
    switch (screen) {
      case Screen.screen1:
        context.router.pushNamed('/screen1');
        break;

      case Screen.screen2:
        context.router.pushNamed('/screen2');
        break;

      case Screen.screen3:
        context.router.pushNamed('/screen3');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Control Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => navigateToScreen(
                context: context,
                screen: Screen.screen1,
              ),
              child: const Text('Navigate to Screen 1'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => navigateToScreen(
                context: context,
                screen: Screen.screen2,
              ),
              child: const Text('Navigate to Screen 2'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => navigateToScreen(
                context: context,
                screen: Screen.screen3,
              ),
              child: const Text('Navigate to Screen 3'),
            ),
          ],
        ),
      ),
    );
  }
}
