import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it_auto_router_go_router/auto_router/control_screen.dart';
import 'get_it/views/get_it_screen.dart';
import 'go_router/config/route_config.dart';

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

    // auto router
     return MaterialApp(
       title: 'Flutter GoRouter',
       theme: ThemeData(
         colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
         useMaterial3: true,
       ),
       home: const ControlScreen(), // auto router
     );
  }
}
