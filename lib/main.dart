import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'auto_router/route/app_route.dart';

void main() {
  // locator(); // get it
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    // get it
    //  return MaterialApp(
    //    title: 'Flutter GoRouter',
    //    theme: ThemeData(
    //      colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
    //      useMaterial3: true,
    //    ),
    //    home: const GetItScreen(), // get it
    //  );

    // go router
    // return MaterialApp.router(
    //   title: 'Flutter GoRouter',
    //   theme: ThemeData(
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
    //     useMaterial3: true,
    //   ),
    //   routerConfig: router, // go router
    // );

    final appRouter = AppRouter();

    // auto router
    return MaterialApp.router(
      title: 'Flutter GoRouter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
      ),
      routerConfig: appRouter.config(),
    );
  }
}
